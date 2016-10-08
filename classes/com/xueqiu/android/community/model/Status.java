package com.xueqiu.android.community.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.xueqiu.android.base.util.ab;
import com.xueqiu.android.cube.model.Cube;
import java.util.Date;
import java.util.List;

public class Status
  implements Parcelable
{
  public static final Parcelable.Creator<Status> CREATOR = new Parcelable.Creator()
  {
    public final Status createFromParcel(Parcel paramAnonymousParcel)
    {
      return new Status(paramAnonymousParcel, null);
    }
    
    public final Status[] newArray(int paramAnonymousInt)
    {
      return new Status[paramAnonymousInt];
    }
  };
  public static final int MARK_NORMAL = 0;
  public static final int MARK_NORMAL_AD = 2;
  public static final int MARK_PROMOTION_FANS_TOP = 3;
  public static final int MARK_PROMOTION_USER_PROFILE = 1;
  public static final int MARK_SYSTEM_RECOMMEND = 4;
  private String andthumbPic;
  @Expose
  private List<Comment> answers;
  @Expose
  private boolean blocked;
  private String bmiddlePic;
  @Expose
  public Card card;
  @Expose
  private long commentId;
  @Expose
  @SerializedName("reply_count")
  private int commentsCount;
  @Expose
  private Date createdAt;
  private String desc;
  @Expose
  private String description;
  @Expose
  @SerializedName("donate_count")
  private int donateCount;
  @Expose
  @SerializedName("donate_snowcoin")
  private int donateSnowCoin;
  @Expose
  private boolean favorited;
  @Expose
  @SerializedName("fav_count")
  private String favount;
  private String formmatedText;
  private boolean hasReply;
  @Expose
  private String inReplyToScreenName;
  @Expose
  private long inReplyToStatusId;
  @Expose
  private long inReplyToUserId;
  @Expose
  private boolean isAnswer;
  @Expose
  private boolean isRefused;
  private Status.PreparedShowObj mPreparedShowObj = null;
  private RecommendCard<Cube> mRecommendCubeCard;
  private RecommendCard<Status> mRecommendStatusCard;
  private RecommendCard<RecommendStock> mRecommendStockCard;
  private RecommendCard<User> mRecommendUserCard;
  @Expose
  private int mark;
  @Expose
  @SerializedName("mark_desc")
  private String markDesc;
  private String originalPic;
  @Expose
  private List<PaidMention> paidMention;
  @Expose
  private int paidMentionAmount;
  @Expose
  private long paidMentionUserId;
  @Expose
  private String pic;
  @Expose
  private JsonElement picSize;
  @Expose
  private int picType = 0;
  @Expose
  long promotionId;
  @Expose
  private String promotionPic;
  @Expose
  private String promotionUrl;
  @Expose
  private long reTweetStatusId;
  @Expose
  private Status retweetedStatus;
  @Expose
  @SerializedName("retweet_count")
  private int retweetsCount;
  @Expose
  private boolean reward;
  @Expose
  private long rewardAmount;
  @Expose
  private int rewardCount;
  @Expose
  private int rewardUserCount;
  @Expose
  private String screenName;
  @Expose
  private String source;
  @Expose
  private String sourceUrl;
  @Expose
  @SerializedName("id")
  private long statusId;
  @Expose
  private String target;
  @Expose
  private String text;
  @Expose
  @SerializedName("firstImg")
  private String thumbnailPic;
  private long timestamp;
  @Expose
  private String title;
  @Expose
  private String topicDesc = null;
  @Expose
  private String topicPic = null;
  @Expose
  @SerializedName("first_pic")
  private String topicPicFirst = null;
  @Expose
  private String topicPicHd = null;
  @Expose
  @SerializedName("topic_pic_headOrPad")
  private String topicPicHead = null;
  @Expose
  @SerializedName("topic_pic_thumbnail_small")
  private String topicPicSmall = null;
  @Expose
  private String topicPicThumbnail = null;
  @Expose
  private String topicTitle = null;
  @Expose
  private boolean truncated;
  private String type = "normal";
  private boolean unread = true;
  private int unreadCount;
  @Expose
  private User user;
  @Expose
  private long userId;
  
  public Status() {}
  
  private Status(Parcel paramParcel)
  {
    this.statusId = paramParcel.readLong();
    this.createdAt = new Date(paramParcel.readLong());
    this.title = ab.a(paramParcel);
    this.text = ab.a(paramParcel);
    this.source = ab.a(paramParcel);
    this.target = ab.a(paramParcel);
    this.sourceUrl = ab.a(paramParcel);
    this.user = ((User)paramParcel.readParcelable(User.class.getClassLoader()));
    this.inReplyToStatusId = paramParcel.readLong();
    this.inReplyToUserId = paramParcel.readLong();
    this.inReplyToScreenName = ab.a(paramParcel);
    if (paramParcel.readInt() == 1)
    {
      bool1 = true;
      this.favorited = bool1;
      if (paramParcel.readInt() != 1) {
        break label541;
      }
      bool1 = true;
      label195:
      this.truncated = bool1;
      this.thumbnailPic = ab.a(paramParcel);
      this.bmiddlePic = ab.a(paramParcel);
      this.originalPic = ab.a(paramParcel);
      this.andthumbPic = ab.a(paramParcel);
      this.pic = ab.a(paramParcel);
      this.promotionPic = ab.a(paramParcel);
      this.promotionUrl = ab.a(paramParcel);
      this.promotionId = paramParcel.readLong();
      if (paramParcel.readInt() != 1) {
        break label546;
      }
      bool1 = true;
      label274:
      this.reward = bool1;
      this.rewardAmount = paramParcel.readLong();
      this.rewardCount = paramParcel.readInt();
      this.rewardUserCount = paramParcel.readInt();
      this.answers = paramParcel.readArrayList(Comment.class.getClassLoader());
      this.paidMention = paramParcel.readArrayList(PaidMention.class.getClassLoader());
      this.paidMentionUserId = paramParcel.readLong();
      this.paidMentionAmount = paramParcel.readInt();
      this.commentsCount = paramParcel.readInt();
      this.retweetsCount = paramParcel.readInt();
      this.retweetedStatus = ((Status)paramParcel.readParcelable(Status.class.getClassLoader()));
      if (paramParcel.readInt() != 1) {
        break label551;
      }
      bool1 = true;
      label387:
      this.unread = bool1;
      if (paramParcel.readInt() != 1) {
        break label556;
      }
      bool1 = true;
      label402:
      this.hasReply = bool1;
      this.formmatedText = ab.a(paramParcel);
      this.description = ab.a(paramParcel);
      this.screenName = ab.a(paramParcel);
      this.reTweetStatusId = paramParcel.readLong();
      if (paramParcel.readInt() != 1) {
        break label561;
      }
    }
    label541:
    label546:
    label551:
    label556:
    label561:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      this.blocked = bool1;
      this.userId = paramParcel.readLong();
      this.donateCount = paramParcel.readInt();
      this.donateSnowCoin = paramParcel.readInt();
      this.mark = paramParcel.readInt();
      this.card = ((Card)paramParcel.readParcelable(Card.class.getClassLoader()));
      this.isAnswer = ab.b(paramParcel);
      this.isRefused = ab.b(paramParcel);
      this.commentId = paramParcel.readLong();
      this.markDesc = ab.a(paramParcel);
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label195;
      bool1 = false;
      break label274;
      bool1 = false;
      break label387;
      bool1 = false;
      break label402;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = true;
    boolean bool1;
    if ((paramObject == null) || (!(paramObject instanceof Status))) {
      bool1 = false;
    }
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      } while (paramObject == this);
      if (paramObject.getClass() != Status.class) {
        break;
      }
      bool1 = bool2;
    } while (((Status)paramObject).getStatusId() == this.statusId);
    return false;
    return false;
  }
  
  public String getAndthumbPic()
  {
    if ((TextUtils.isEmpty(this.andthumbPic)) && (!TextUtils.isEmpty(getThumbnailPic()))) {
      if (!getThumbnailPic().contains("!thumb.")) {
        break label55;
      }
    }
    label55:
    for (this.andthumbPic = getThumbnailPic().replace("!thumb.", "!Andthumb.");; this.andthumbPic = getThumbnailPic().replace("/thumb.", "/Andthumb.")) {
      return this.andthumbPic;
    }
  }
  
  public List<Comment> getAnswers()
  {
    return this.answers;
  }
  
  public String getBmiddlePic()
  {
    if ((TextUtils.isEmpty(this.bmiddlePic)) && (!TextUtils.isEmpty(getThumbnailPic()))) {
      if (!getThumbnailPic().contains("!thumb.")) {
        break label55;
      }
    }
    label55:
    for (this.bmiddlePic = getThumbnailPic().replace("!thumb.", "!small.");; this.bmiddlePic = getThumbnailPic().replace("/thumb.", "/small.")) {
      return this.bmiddlePic;
    }
  }
  
  public long getCommentId()
  {
    return this.commentId;
  }
  
  public int getCommentsCount()
  {
    return this.commentsCount;
  }
  
  public Date getCreatedAt()
  {
    return this.createdAt;
  }
  
  public String getDesc()
  {
    return this.desc;
  }
  
  public String getDescription()
  {
    return this.description;
  }
  
  public int getDonateCount()
  {
    return this.donateCount;
  }
  
  public int getDonateSnowCoin()
  {
    return this.donateSnowCoin;
  }
  
  public String getFormmatedText()
  {
    return this.formmatedText;
  }
  
  public String getInReplyToScreenName()
  {
    return this.inReplyToScreenName;
  }
  
  public long getInReplyToStatusId()
  {
    return this.inReplyToStatusId;
  }
  
  public long getInReplyToUserId()
  {
    return this.inReplyToUserId;
  }
  
  public int getMark()
  {
    return this.mark;
  }
  
  public String getMarkDesc()
  {
    return this.markDesc;
  }
  
  public String getOriginalPic()
  {
    if ((TextUtils.isEmpty(this.originalPic)) && (!TextUtils.isEmpty(getThumbnailPic()))) {
      if (!getThumbnailPic().contains("!thumb.")) {
        break label55;
      }
    }
    label55:
    for (this.originalPic = getThumbnailPic().replace("!thumb.", "!custom.");; this.originalPic = getThumbnailPic().replace("/thumb.", "/custom.")) {
      return this.originalPic;
    }
  }
  
  public List<PaidMention> getPaidMention()
  {
    return this.paidMention;
  }
  
  public int getPaidMentionAmount()
  {
    return this.paidMentionAmount;
  }
  
  public long getPaidMentionUserId()
  {
    return this.paidMentionUserId;
  }
  
  public String getPic()
  {
    return this.pic;
  }
  
  public int getPicType()
  {
    return this.picType;
  }
  
  public Status.PreparedShowObj getPreparedShowObj()
  {
    return this.mPreparedShowObj;
  }
  
  public long getPromotionId()
  {
    return this.promotionId;
  }
  
  public String getPromotionPic()
  {
    return this.promotionPic;
  }
  
  public String getPromotionUrl()
  {
    return this.promotionUrl;
  }
  
  public long getReTweetStatusId()
  {
    return this.reTweetStatusId;
  }
  
  public RecommendCard<Cube> getRecommendCubeCard()
  {
    return this.mRecommendCubeCard;
  }
  
  public RecommendCard<Status> getRecommendStatusCard()
  {
    return this.mRecommendStatusCard;
  }
  
  public RecommendCard<RecommendStock> getRecommendStockCard()
  {
    return this.mRecommendStockCard;
  }
  
  public RecommendCard<User> getRecommendUserCard()
  {
    return this.mRecommendUserCard;
  }
  
  public Status getRetweetedStatus()
  {
    return this.retweetedStatus;
  }
  
  public int getRetweetsCount()
  {
    return this.retweetsCount;
  }
  
  public long getRewardAmount()
  {
    return this.rewardAmount;
  }
  
  public int getRewardCount()
  {
    return this.rewardCount;
  }
  
  public int getRewardUserCount()
  {
    return this.rewardUserCount;
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
  
  public long getStatusId()
  {
    return this.statusId;
  }
  
  public String getTarget()
  {
    return this.target;
  }
  
  public String getText()
  {
    return this.text;
  }
  
  public String getThumbnailPic()
  {
    return this.thumbnailPic;
  }
  
  public long getTimestamp()
  {
    return this.timestamp;
  }
  
  public String getTitle()
  {
    return this.title;
  }
  
  public String getTopicDesc()
  {
    return this.topicDesc;
  }
  
  public String getTopicPic()
  {
    return this.topicPic;
  }
  
  public String getTopicPicFirst()
  {
    return this.topicPicFirst;
  }
  
  public String getTopicPicHd()
  {
    return this.topicPicHd;
  }
  
  public String getTopicPicHead()
  {
    return this.topicPicHead;
  }
  
  public String getTopicPicSmall()
  {
    return this.topicPicSmall;
  }
  
  public String getTopicPicThumbnail()
  {
    return this.topicPicThumbnail;
  }
  
  public String getTopicTitle()
  {
    return this.topicTitle;
  }
  
  public String getType()
  {
    return this.type;
  }
  
  public int getUnreadCount()
  {
    return this.unreadCount;
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
    return Long.valueOf(this.statusId).hashCode();
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
  
  public boolean isHasReply()
  {
    return this.hasReply;
  }
  
  public boolean isRefused()
  {
    return this.isRefused;
  }
  
  public boolean isReward()
  {
    return this.reward;
  }
  
  public boolean isTruncated()
  {
    return this.truncated;
  }
  
  public boolean isUnread()
  {
    return this.unread;
  }
  
  public double proportion()
  {
    if (this.picSize != null)
    {
      JsonObject localJsonObject = (JsonObject)this.picSize;
      if ((localJsonObject.has("height")) && (localJsonObject.has("width")))
      {
        int i = localJsonObject.get("height").getAsInt();
        int j = localJsonObject.get("width").getAsInt();
        return i / j;
      }
      return 0.525D;
    }
    return 0.525D;
  }
  
  public void setAnswer(boolean paramBoolean)
  {
    this.isAnswer = paramBoolean;
  }
  
  public void setAnswers(List<Comment> paramList)
  {
    this.answers = paramList;
  }
  
  public void setBlocked(boolean paramBoolean)
  {
    this.blocked = paramBoolean;
  }
  
  public void setCommentId(long paramLong)
  {
    this.commentId = paramLong;
  }
  
  public void setCommentsCount(int paramInt)
  {
    this.commentsCount = paramInt;
  }
  
  public void setCreatedAt(Date paramDate)
  {
    this.createdAt = paramDate;
  }
  
  public void setDesc(String paramString)
  {
    this.desc = paramString;
  }
  
  public void setDescription(String paramString)
  {
    this.description = paramString;
  }
  
  public void setDonateCount(int paramInt)
  {
    this.donateCount = paramInt;
  }
  
  public void setDonateSnowCoin(int paramInt)
  {
    this.donateSnowCoin = paramInt;
  }
  
  public void setFavorited(boolean paramBoolean)
  {
    this.favorited = paramBoolean;
  }
  
  public void setFormmatedText(String paramString)
  {
    this.formmatedText = paramString;
  }
  
  public void setHasReply(boolean paramBoolean)
  {
    this.hasReply = paramBoolean;
  }
  
  public void setInReplyToScreenName(String paramString)
  {
    this.inReplyToScreenName = paramString;
  }
  
  public void setInReplyToStatusId(long paramLong)
  {
    this.inReplyToStatusId = paramLong;
  }
  
  public void setInReplyToUserId(long paramLong)
  {
    this.inReplyToUserId = paramLong;
  }
  
  public void setMark(int paramInt)
  {
    this.mark = paramInt;
  }
  
  public void setMarkDesc(String paramString)
  {
    this.markDesc = paramString;
  }
  
  public void setPaidMention(List<PaidMention> paramList)
  {
    this.paidMention = paramList;
  }
  
  public void setPaidMentionAmount(int paramInt)
  {
    this.paidMentionAmount = paramInt;
  }
  
  public void setPaidMentionUserId(long paramLong)
  {
    this.paidMentionUserId = paramLong;
  }
  
  public void setPic(String paramString)
  {
    this.pic = paramString;
  }
  
  public void setPicType(int paramInt)
  {
    this.picType = paramInt;
  }
  
  public void setPreparedShowObj(Status.PreparedShowObj paramPreparedShowObj)
  {
    this.mPreparedShowObj = paramPreparedShowObj;
  }
  
  public void setReTweetStatusId(long paramLong)
  {
    this.reTweetStatusId = paramLong;
  }
  
  public void setRecommendCubeCard(RecommendCard<Cube> paramRecommendCard)
  {
    this.mRecommendCubeCard = paramRecommendCard;
  }
  
  public void setRecommendStatusCard(RecommendCard<Status> paramRecommendCard)
  {
    this.mRecommendStatusCard = paramRecommendCard;
  }
  
  public void setRecommendStockCard(RecommendCard<RecommendStock> paramRecommendCard)
  {
    this.mRecommendStockCard = paramRecommendCard;
  }
  
  public void setRecommendUserCard(RecommendCard<User> paramRecommendCard)
  {
    this.mRecommendUserCard = paramRecommendCard;
  }
  
  public void setRefused(boolean paramBoolean)
  {
    this.isRefused = paramBoolean;
  }
  
  public void setRetweetedStatus(Status paramStatus)
  {
    this.retweetedStatus = paramStatus;
  }
  
  public void setRetweetsCount(int paramInt)
  {
    this.retweetsCount = paramInt;
  }
  
  public void setReward(boolean paramBoolean)
  {
    this.reward = paramBoolean;
  }
  
  public void setRewardAmount(long paramLong)
  {
    this.rewardAmount = paramLong;
  }
  
  public void setRewardCount(int paramInt)
  {
    this.rewardCount = paramInt;
  }
  
  public void setRewardUserCount(int paramInt)
  {
    this.rewardUserCount = paramInt;
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
  
  public void setStatusId(long paramLong)
  {
    this.statusId = paramLong;
  }
  
  public void setTarget(String paramString)
  {
    this.target = paramString;
  }
  
  public void setText(String paramString)
  {
    this.text = paramString;
  }
  
  public void setThumbnailPic(String paramString)
  {
    this.thumbnailPic = paramString;
  }
  
  public void setTimestamp(long paramLong)
  {
    this.timestamp = paramLong;
  }
  
  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
  
  public void setTopicDesc(String paramString)
  {
    this.topicDesc = paramString;
  }
  
  public void setTopicPic(String paramString)
  {
    this.topicPic = paramString;
  }
  
  public void setTopicPicFirst(String paramString)
  {
    this.topicPicFirst = paramString;
  }
  
  public void setTopicPicHd(String paramString)
  {
    this.topicPicHd = paramString;
  }
  
  public void setTopicPicHead(String paramString)
  {
    this.topicPicHead = paramString;
  }
  
  public void setTopicPicSmall(String paramString)
  {
    this.topicPicSmall = paramString;
  }
  
  public void setTopicPicThumbnail(String paramString)
  {
    this.topicPicThumbnail = paramString;
  }
  
  public void setTopicTitle(String paramString)
  {
    this.topicTitle = paramString;
  }
  
  public void setTruncated(boolean paramBoolean)
  {
    this.truncated = paramBoolean;
  }
  
  public void setType(String paramString)
  {
    this.type = paramString;
  }
  
  public void setUnread(boolean paramBoolean)
  {
    this.unread = paramBoolean;
  }
  
  public void setUnreadCount(int paramInt)
  {
    this.unreadCount = paramInt;
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
    int j = 1;
    paramParcel.writeLong(this.statusId);
    paramParcel.writeLong(this.createdAt.getTime());
    ab.a(paramParcel, this.title);
    ab.a(paramParcel, this.text);
    ab.a(paramParcel, this.source);
    ab.a(paramParcel, this.target);
    ab.a(paramParcel, this.sourceUrl);
    paramParcel.writeParcelable(this.user, paramInt);
    paramParcel.writeLong(this.inReplyToStatusId);
    paramParcel.writeLong(this.inReplyToUserId);
    ab.a(paramParcel, this.inReplyToScreenName);
    if (this.favorited)
    {
      i = 1;
      paramParcel.writeInt(i);
      if (!this.truncated) {
        break label436;
      }
      i = 1;
      label118:
      paramParcel.writeInt(i);
      ab.a(paramParcel, this.thumbnailPic);
      ab.a(paramParcel, this.bmiddlePic);
      ab.a(paramParcel, this.originalPic);
      ab.a(paramParcel, this.andthumbPic);
      ab.a(paramParcel, this.pic);
      ab.a(paramParcel, this.promotionPic);
      ab.a(paramParcel, this.promotionUrl);
      paramParcel.writeLong(this.promotionId);
      if (!this.reward) {
        break label441;
      }
      i = 1;
      label196:
      paramParcel.writeInt(i);
      paramParcel.writeLong(this.rewardAmount);
      paramParcel.writeInt(this.rewardCount);
      paramParcel.writeInt(this.rewardUserCount);
      paramParcel.writeList(this.answers);
      paramParcel.writeList(this.paidMention);
      paramParcel.writeLong(this.paidMentionUserId);
      paramParcel.writeInt(this.paidMentionAmount);
      paramParcel.writeInt(this.commentsCount);
      paramParcel.writeInt(this.retweetsCount);
      paramParcel.writeParcelable(this.retweetedStatus, paramInt);
      if (!this.unread) {
        break label446;
      }
      i = 1;
      label291:
      paramParcel.writeInt(i);
      if (!this.hasReply) {
        break label451;
      }
      i = 1;
      label305:
      paramParcel.writeInt(i);
      ab.a(paramParcel, this.formmatedText);
      ab.a(paramParcel, this.description);
      ab.a(paramParcel, this.screenName);
      paramParcel.writeLong(this.reTweetStatusId);
      if (!this.blocked) {
        break label456;
      }
    }
    label436:
    label441:
    label446:
    label451:
    label456:
    for (int i = j;; i = 2)
    {
      paramParcel.writeInt(i);
      paramParcel.writeLong(this.userId);
      paramParcel.writeInt(this.donateCount);
      paramParcel.writeInt(this.donateSnowCoin);
      paramParcel.writeInt(this.mark);
      paramParcel.writeParcelable(this.card, paramInt);
      ab.a(paramParcel, this.isAnswer);
      ab.a(paramParcel, this.isRefused);
      paramParcel.writeLong(this.commentId);
      ab.a(paramParcel, this.markDesc);
      return;
      i = 2;
      break;
      i = 2;
      break label118;
      i = 2;
      break label196;
      i = 2;
      break label291;
      i = 2;
      break label305;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\Status.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */