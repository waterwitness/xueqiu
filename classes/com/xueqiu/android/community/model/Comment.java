package com.xueqiu.android.community.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.xueqiu.android.base.util.ab;
import java.util.Date;
import java.util.List;

public class Comment
  implements Parcelable
{
  public static final Parcelable.Creator<Comment> CREATOR = new Parcelable.Creator()
  {
    public final Comment createFromParcel(Parcel paramAnonymousParcel)
    {
      return new Comment(paramAnonymousParcel, null);
    }
    
    public final Comment[] newArray(int paramAnonymousInt)
    {
      return new Comment[paramAnonymousInt];
    }
  };
  @Expose
  private boolean blocked = false;
  @Expose
  private Date createdAt;
  @Expose
  private String description;
  @Expose
  private int donateCount;
  @Expose
  private int donateSnowcoin;
  @Expose
  private boolean favorited;
  @Expose
  private long id;
  @Expose
  private boolean isAnswer;
  @Expose
  private boolean isRefused;
  @Expose
  private int likeCount;
  @Expose
  private boolean liked;
  @Expose
  private List<PaidMention> paidMention;
  private Comment.PreparedShowObj preparedShowObj = null;
  @Expose
  private Comment replyComment;
  @Expose
  @SerializedName("in_reply_to_comment_id")
  private long replyCommentId;
  @Expose
  @SerializedName("reply_screenName")
  private String replyScreenName;
  @Expose
  private long retweetStatusId;
  @Expose
  private float rewardAmount;
  @Expose
  private int rewardUserCount;
  @Expose
  private long rqid;
  @Expose
  private String rqtype;
  private String screenName;
  @Expose
  private String source;
  @Expose
  private String sourceUrl;
  @Expose
  private Status status;
  @Expose
  @SerializedName("statusId")
  private long statusId;
  @Expose
  private String text;
  private long timestamp;
  @Expose
  private boolean truncated;
  @Expose
  private User user;
  @Expose
  private long userId;
  
  public Comment() {}
  
  private Comment(Parcel paramParcel)
  {
    this.id = paramParcel.readLong();
    this.text = paramParcel.readString();
    this.createdAt = ab.c(paramParcel);
    this.source = paramParcel.readString();
    this.sourceUrl = paramParcel.readString();
    this.favorited = ab.b(paramParcel);
    this.truncated = ab.b(paramParcel);
    this.user = ((User)paramParcel.readParcelable(User.class.getClassLoader()));
    this.status = ((Status)paramParcel.readParcelable(Status.class.getClassLoader()));
    this.retweetStatusId = paramParcel.readLong();
    this.replyComment = ((Comment)paramParcel.readParcelable(Comment.class.getClassLoader()));
    this.replyScreenName = paramParcel.readString();
    this.userId = paramParcel.readLong();
    this.statusId = paramParcel.readLong();
    this.replyCommentId = paramParcel.readLong();
    this.donateCount = paramParcel.readInt();
    this.donateSnowcoin = paramParcel.readInt();
    this.liked = ab.b(paramParcel);
    this.likeCount = paramParcel.readInt();
    this.blocked = ab.b(paramParcel);
    this.rewardUserCount = paramParcel.readInt();
    this.rewardAmount = paramParcel.readFloat();
    this.paidMention = paramParcel.readArrayList(PaidMention.class.getClassLoader());
    this.isRefused = ab.b(paramParcel);
    this.isAnswer = ab.b(paramParcel);
    this.rqtype = paramParcel.readString();
    this.rqid = paramParcel.readLong();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof Comment))) {}
    while (this.id != ((Comment)paramObject).getId()) {
      return false;
    }
    return true;
  }
  
  public Date getCreatedAt()
  {
    return this.createdAt;
  }
  
  public String getDescription()
  {
    return this.description;
  }
  
  public int getDonateCount()
  {
    return this.donateCount;
  }
  
  public int getDonateSnowcoin()
  {
    return this.donateSnowcoin;
  }
  
  public long getId()
  {
    return this.id;
  }
  
  public int getLikeCount()
  {
    return this.likeCount;
  }
  
  public List<PaidMention> getPaidMention()
  {
    return this.paidMention;
  }
  
  public Comment.PreparedShowObj getPreparedShowObj()
  {
    return this.preparedShowObj;
  }
  
  public Comment getReplyComment()
  {
    return this.replyComment;
  }
  
  public long getReplyCommentId()
  {
    return this.replyCommentId;
  }
  
  public String getReplyScreenName()
  {
    return this.replyScreenName;
  }
  
  public long getRetweetStatusId()
  {
    return this.retweetStatusId;
  }
  
  public float getRewardAmount()
  {
    return this.rewardAmount;
  }
  
  public int getRewardUserCount()
  {
    return this.rewardUserCount;
  }
  
  public long getRqid()
  {
    return this.rqid;
  }
  
  public String getRqtype()
  {
    return this.rqtype;
  }
  
  public String getScreenName()
  {
    return this.screenName;
  }
  
  public String getSource()
  {
    return this.source;
  }
  
  public String getSourceUrl()
  {
    return this.sourceUrl;
  }
  
  public Status getStatus()
  {
    return this.status;
  }
  
  public long getStatusId()
  {
    return this.statusId;
  }
  
  public String getText()
  {
    return this.text;
  }
  
  public long getTimestamp()
  {
    return this.timestamp;
  }
  
  public User getUser()
  {
    return this.user;
  }
  
  public long getUserId()
  {
    return this.userId;
  }
  
  public int hashCode()
  {
    return Long.valueOf(this.id).hashCode();
  }
  
  public boolean isAnswer()
  {
    return this.isAnswer;
  }
  
  public boolean isBlocked()
  {
    return this.blocked;
  }
  
  public boolean isFavorited()
  {
    return this.favorited;
  }
  
  public boolean isLiked()
  {
    return this.liked;
  }
  
  public boolean isRefused()
  {
    return this.isRefused;
  }
  
  public boolean isTruncated()
  {
    return this.truncated;
  }
  
  public void setAnswer(boolean paramBoolean)
  {
    this.isAnswer = paramBoolean;
  }
  
  public void setBlocked(boolean paramBoolean)
  {
    this.blocked = paramBoolean;
  }
  
  public void setCreatedAt(Date paramDate)
  {
    this.createdAt = paramDate;
  }
  
  public void setDescription(String paramString)
  {
    this.description = paramString;
  }
  
  public void setDonateCount(int paramInt)
  {
    this.donateCount = paramInt;
  }
  
  public void setDonateSnowcoin(int paramInt)
  {
    this.donateSnowcoin = paramInt;
  }
  
  public void setFavorited(boolean paramBoolean)
  {
    this.favorited = paramBoolean;
  }
  
  public void setId(long paramLong)
  {
    this.id = paramLong;
  }
  
  public void setLikeCount(int paramInt)
  {
    this.likeCount = paramInt;
  }
  
  public void setLiked(boolean paramBoolean)
  {
    this.liked = paramBoolean;
  }
  
  public void setPaidMention(List<PaidMention> paramList)
  {
    this.paidMention = paramList;
  }
  
  public void setPreparedShowObj(Comment.PreparedShowObj paramPreparedShowObj)
  {
    this.preparedShowObj = paramPreparedShowObj;
  }
  
  public void setRefused(boolean paramBoolean)
  {
    this.isRefused = paramBoolean;
  }
  
  public void setReplyComment(Comment paramComment)
  {
    this.replyComment = paramComment;
  }
  
  public void setReplyCommentId(long paramLong)
  {
    this.replyCommentId = paramLong;
  }
  
  public void setReplyScreenName(String paramString)
  {
    this.replyScreenName = paramString;
  }
  
  public void setRetweetStatusId(long paramLong)
  {
    this.retweetStatusId = paramLong;
  }
  
  public void setRewardAmount(float paramFloat)
  {
    this.rewardAmount = paramFloat;
  }
  
  public void setRewardUserCount(int paramInt)
  {
    this.rewardUserCount = paramInt;
  }
  
  public void setRqid(long paramLong)
  {
    this.rqid = paramLong;
  }
  
  public void setRqtype(String paramString)
  {
    this.rqtype = paramString;
  }
  
  public void setScreenName(String paramString)
  {
    this.screenName = paramString;
  }
  
  public void setSource(String paramString)
  {
    this.source = paramString;
  }
  
  public void setSourceUrl(String paramString)
  {
    this.sourceUrl = paramString;
  }
  
  public void setStatus(Status paramStatus)
  {
    this.status = paramStatus;
  }
  
  public void setStatusId(long paramLong)
  {
    this.statusId = paramLong;
  }
  
  public void setText(String paramString)
  {
    this.text = paramString;
  }
  
  public void setTimestamp(long paramLong)
  {
    this.timestamp = paramLong;
  }
  
  public void setTruncated(boolean paramBoolean)
  {
    this.truncated = paramBoolean;
  }
  
  public void setUser(User paramUser)
  {
    this.user = paramUser;
  }
  
  public void setUserId(long paramLong)
  {
    this.userId = paramLong;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.id);
    paramParcel.writeString(this.text);
    ab.a(paramParcel, this.createdAt);
    paramParcel.writeString(this.source);
    paramParcel.writeString(this.sourceUrl);
    ab.a(paramParcel, this.favorited);
    ab.a(paramParcel, this.truncated);
    paramParcel.writeParcelable(this.user, paramInt);
    paramParcel.writeParcelable(this.status, paramInt);
    paramParcel.writeLong(this.retweetStatusId);
    paramParcel.writeParcelable(this.replyComment, paramInt);
    paramParcel.writeString(this.replyScreenName);
    paramParcel.writeLong(this.userId);
    paramParcel.writeLong(this.statusId);
    paramParcel.writeLong(this.replyCommentId);
    paramParcel.writeInt(this.donateCount);
    paramParcel.writeInt(this.donateSnowcoin);
    ab.a(paramParcel, this.liked);
    paramParcel.writeInt(this.likeCount);
    ab.a(paramParcel, this.blocked);
    paramParcel.writeInt(this.rewardUserCount);
    paramParcel.writeFloat(this.rewardAmount);
    paramParcel.writeList(this.paidMention);
    ab.a(paramParcel, this.isRefused);
    ab.a(paramParcel, this.isAnswer);
    paramParcel.writeString(this.rqtype);
    paramParcel.writeLong(this.rqid);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\Comment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */