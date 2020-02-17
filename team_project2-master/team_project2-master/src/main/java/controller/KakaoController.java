package controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.message.BasicNameValuePair;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;



public class KakaoController {

	/*
	 * static �޼���� �����ؼ� ��ü�� �������� ���� ��Ȳ������ ����� ����. �׷��� static ����鸸 ��� ����
	 */

	private final static String K_CLIENT_ID = "e26813a1bfbea6b3df6f9370af454e33";
	private final static String K_REDIRECT_URl = "http://localhost:8080/kakaofriends/user/login.store";

	// īī�� �α��� ȭ���̷� �̵��ϴ� �ּҰ� ����
	public static String getAuthorizationUrl(HttpSession session) {
		String kakaoUrl = "https://kauth.kakao.com/oauth/authorize?" + "client_id=" + K_CLIENT_ID + "&redirect_uri="
				+ K_REDIRECT_URl + "&response_type=code";
		return kakaoUrl;

	}

	// ����� ������ ����Ǿ��ִ� ��ū �ҷ����� �Լ�
	public static JsonNode getAccessToken(String autorize_code) {
		final String RequestUrl = "https://kauth.kakao.com/oauth/token";
		final List<NameValuePair> postParams = new ArrayList<NameValuePair>();
		postParams.add(new BasicNameValuePair("grant_type", "authorization_code"));
		postParams.add(new BasicNameValuePair("client_id", K_CLIENT_ID));// REST API KEY
		postParams.add(new BasicNameValuePair("redirect_uri", K_REDIRECT_URl)); // �����̷�Ʈ URI
		postParams.add(new BasicNameValuePair("code", autorize_code)); // �α��� ������ ���� �ڵ�
		final HttpClient client = HttpClientBuilder.create().build();
		final HttpPost post = new HttpPost(RequestUrl);
		JsonNode returnNode = null;

		try {
			post.setEntity(new UrlEncodedFormEntity(postParams));
			final HttpResponse response = client.execute(post);
			final int responseCode = response.getStatusLine().getStatusCode();

			// JSON ���� ��ȯ�� ó��
			ObjectMapper mapper = new ObjectMapper();
			returnNode = mapper.readTree(response.getEntity().getContent());

		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (ClientProtocolException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			// clear resources
		}
		return returnNode;
	}

	// ����� ������ jsonNode Ÿ������ ���Ͻ�Ŵ
	public static JsonNode getKakaoUserInfo(JsonNode accessToken) {
		// v1���� �ϸ� �̸��� ���������� ������
		final String RequestUrl = "https://kapi.kakao.com/v2/user/me";
		final HttpClient client = HttpClientBuilder.create().build();
		final HttpPost post = new HttpPost(RequestUrl);
		// String accessToken = getAccessToken(accessToken2);
		// add header
		post.addHeader("Authorization", "Bearer " + accessToken);

		JsonNode returnNode = null;

		try {

			final HttpResponse response = client.execute(post);
			final int responseCode = response.getStatusLine().getStatusCode();
			System.out.println("\nSending 'POST' request to URL : " + RequestUrl);
			System.out.println("Response Code : " + responseCode);

			// JSON ���� ��ȯ�� ó��
			ObjectMapper mapper = new ObjectMapper();
			returnNode = mapper.readTree(response.getEntity().getContent());
			System.out.println(returnNode);
		} catch (UnsupportedEncodingException e) {

			e.printStackTrace();
		} catch (ClientProtocolException e) {

			e.printStackTrace();
		} catch (IOException e) {

			e.printStackTrace();
		} finally {

			// clear resources
		}
		return returnNode;

	}

	/*
	 * ����� Authorization : "Bearer {access_Token}" �� �����Ͽ� ��û�ϸ� �α׾ƿ��� ������ Ŭ���̾�Ʈ�� ���̵�
	 * ��ȯ
	 */
	public static JsonNode kakaoLogout(String autorize_code) {
		final String RequestUrl = "https://kapi.kakao.com/v2/user/logout";
		final HttpClient client = HttpClientBuilder.create().build();
		final HttpPost post = new HttpPost(RequestUrl);
		System.out.println(autorize_code);
		post.addHeader("Authorization", "Bearer " + autorize_code);
		JsonNode returnNode = null;

		try {
			final HttpResponse response = client.execute(post);
			ObjectMapper mapper = new ObjectMapper();
			returnNode = mapper.readTree(response.getEntity().getContent());
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (ClientProtocolException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {

		}
		return returnNode;
	}

	public static JsonNode kakaoupdate(String nickname, String gender, JsonNode autorize_code) {
		final String RequestUrl = "https://kapi.kakao.com/v1/user/update_profile";
	      final HttpClient client = HttpClientBuilder.create().build();
	      final HttpPost post = new HttpPost(RequestUrl);
	      
	      post.addHeader("Authorization","Bearer "+autorize_code);
	      // JSON���� ���� �����͸� �����ϱ� ���� ������ ��, ���� "�� ����
	      nickname = nickname.replace("\"", "");
	      gender = gender.replace("\"", "");
	      
	      // json ������ ����
	      JSONObject personInfo = new JSONObject();
	      // ������ �߰�
	      personInfo.put("nickname", nickname);
	      //personInfo.put("gender", gender);
	      
	      // body �� �߰��ϱ� ���� List����
	      final List<NameValuePair> postParams = new ArrayList<NameValuePair>();
	      postParams.add(new BasicNameValuePair("properties", ""+personInfo));
	      System.out.println(personInfo);
	      JsonNode returnNode = null;
	      try {
	         // ��û url�� body�� ���� �߰�
	         post.setEntity(new UrlEncodedFormEntity(postParams));
	         final HttpResponse response = client.execute(post);
	         // �����ڵ�
	         final int responseCode = response.getStatusLine().getStatusCode();
	         System.out.println("���� Code : "+responseCode);
	         ObjectMapper mapper = new ObjectMapper();
	         returnNode = mapper.readTree(response.getEntity().getContent());
	      }catch (UnsupportedEncodingException e) {
	         e.printStackTrace();
	      } catch (ClientProtocolException e) {
	         e.printStackTrace();
	      } catch (IOException e) {
	         e.printStackTrace();
	      }
	      
	      System.out.println("�̤Ѥ�"+returnNode);
	      return  returnNode;
	}

}
