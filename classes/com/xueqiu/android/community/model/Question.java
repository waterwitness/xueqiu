package com.xueqiu.android.community.model;

import com.google.gson.annotations.Expose;

public class Question
{
  @Expose
  private long aid;
  @Expose
  private Comment answer;
  @Expose
  private String description;
  @Expose
  private long qid;
  @Expose
  private String qtype;
  @Expose
  private String target;
  @Expose
  private String text;
  @Expose
  private User user;
  
  public long getAid()
  {
    return this.aid;
  }
  
  public Comment getAnswer()
  {
    return this.answer;
  }
  
  public String getDescription()
  {
    return this.description;
  }
  
  public long getQid()
  {
    return this.qid;
  }
  
  public String getQtype()
  {
    return this.qtype;
  }
  
  public String getTarget()
  {
    return this.target;
  }
  
  public String getText()
  {
    return this.text;
  }
  
  public User getUser()
  {
    return this.user;
  }
  
  public void setAid(long paramLong)
  {
    this.aid = paramLong;
  }
  
  public void setAnswer(Comment paramComment)
  {
    this.answer = paramComment;
  }
  
  public void setDescription(String paramString)
  {
    this.description = paramString;
  }
  
  public void setQid(long paramLong)
  {
    this.qid = paramLong;
  }
  
  public void setQtype(String paramString)
  {
    this.qtype = paramString;
  }
  
  public void setTarget(String paramString)
  {
    this.target = paramString;
  }
  
  public void setText(String paramString)
  {
    this.text = paramString;
  }
  
  public void setUser(User paramUser)
  {
    this.user = paramUser;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\Question.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */