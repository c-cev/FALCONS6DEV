/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-25-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class DummyPostResponseWrapper {
    public list <Post> posts;

    public class Post{
        public integer id;
        public string title;
        public string body;
        public integer userId;
        public list<string> tags;

    }
}
