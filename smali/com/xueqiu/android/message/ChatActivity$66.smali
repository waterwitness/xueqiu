.class final Lcom/xueqiu/android/message/ChatActivity$66;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lrx/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b",
        "<",
        "Lcom/xueqiu/android/message/model/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/message/ChatActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2087
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$66;->b:Lcom/xueqiu/android/message/ChatActivity;

    iput-object p2, p0, Lcom/xueqiu/android/message/ChatActivity$66;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 12

    .prologue
    const/16 v10, 0x320

    const/16 v9, 0x258

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2087
    move-object v3, p1

    check-cast v3, Lrx/i;

    .line 3104
    const-string v0, "ChatActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "begin uploading image:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity$66;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3105
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$66;->b:Lcom/xueqiu/android/message/ChatActivity;

    const/high16 v1, 0x43160000    # 150.0f

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    .line 3106
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$66;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/ChatActivity;->H(Lcom/xueqiu/android/message/ChatActivity;)Lcom/d/a/b/f;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity$66;->a:Ljava/lang/String;

    new-instance v4, Lcom/d/a/b/a/f;

    invoke-direct {v4, v0, v0}, Lcom/d/a/b/a/f;-><init>(II)V

    .line 3532
    const/4 v0, 0x0

    invoke-virtual {v1, v2, v4, v0}, Lcom/d/a/b/f;->a(Ljava/lang/String;Lcom/d/a/b/a/f;Lcom/d/a/b/d;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3107
    if-nez v0, :cond_0

    .line 3108
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cant load image:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity$66;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lrx/i;->a(Ljava/lang/Throwable;)V

    .line 3130
    :goto_0
    return-void

    .line 3111
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$66;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v1

    const/4 v2, 0x4

    .line 4069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 4077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    .line 3111
    invoke-virtual {v1, v2, v4, v5}, Lcom/xueqiu/android/message/model/Talk;->allocateMessage(IJ)Lcom/xueqiu/android/message/model/Message;

    move-result-object v4

    .line 3112
    const/4 v1, 0x5

    invoke-virtual {v4, v1}, Lcom/xueqiu/android/message/model/Message;->setStatus(I)V

    .line 3113
    const-string v1, "%s?%dx%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xueqiu/android/message/ChatActivity$66;->a:Ljava/lang/String;

    aput-object v5, v2, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/xueqiu/android/message/model/Message;->setText(Ljava/lang/String;)V

    .line 3114
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$66;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3115
    const-string v0, "\u6211:[\u56fe\u7247]"

    invoke-virtual {v4, v0}, Lcom/xueqiu/android/message/model/Message;->setSummary(Ljava/lang/String;)V

    .line 3119
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$66;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->saveMessage(Lcom/xueqiu/android/message/model/Message;)V

    .line 3120
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$66;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v0

    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/Message;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setSummary(Ljava/lang/String;)V

    .line 3121
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$66;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/xueqiu/android/message/model/Talk;->setStatus(I)V

    .line 3122
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$66;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/ChatActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$66;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->saveTalk(Lcom/xueqiu/android/message/model/Talk;)V

    .line 3123
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$66;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/ChatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.xueqiu.android.action.talks"

    const-string v2, "extra_talks"

    iget-object v5, p0, Lcom/xueqiu/android/message/ChatActivity$66;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v5}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v5

    invoke-static {v0, v1, v2, v5}, Lcom/xueqiu/android/base/util/x;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3124
    invoke-virtual {v3, v4}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 3126
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$66;->a:Ljava/lang/String;

    .line 4089
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$66;->b:Lcom/xueqiu/android/message/ChatActivity;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/message/ChatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 4090
    new-instance v2, Lcom/d/a/b/e;

    invoke-direct {v2}, Lcom/d/a/b/e;-><init>()V

    .line 4367
    iput-boolean v6, v2, Lcom/d/a/b/e;->i:Z

    .line 5341
    iput-boolean v6, v2, Lcom/d/a/b/e;->h:Z

    .line 4091
    invoke-virtual {v2}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v2

    .line 4092
    iget-object v5, p0, Lcom/xueqiu/android/message/ChatActivity$66;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v5}, Lcom/xueqiu/android/base/util/i;->c(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4093
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$66;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->H(Lcom/xueqiu/android/message/ChatActivity;)Lcom/d/a/b/f;

    move-result-object v0

    new-instance v5, Lcom/d/a/b/a/f;

    invoke-direct {v5, v9, v10}, Lcom/d/a/b/a/f;-><init>(II)V

    invoke-virtual {v0, v1, v5, v2}, Lcom/d/a/b/f;->a(Ljava/lang/String;Lcom/d/a/b/a/f;Lcom/d/a/b/d;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3127
    :goto_2
    if-nez v0, :cond_5

    .line 3128
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t load image:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity$66;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lrx/i;->a(Ljava/lang/Throwable;)V

    .line 3129
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$66;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0, v4}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/message/model/Message;)V

    goto/16 :goto_0

    .line 3117
    :cond_1
    const-string v0, "[\u56fe\u7247]"

    invoke-virtual {v4, v0}, Lcom/xueqiu/android/message/model/Message;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4094
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    if-eq v5, v8, :cond_3

    .line 4095
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    if-ne v0, v7, :cond_4

    .line 4096
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$66;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->H(Lcom/xueqiu/android/message/ChatActivity;)Lcom/d/a/b/f;

    move-result-object v0

    new-instance v5, Lcom/d/a/b/a/f;

    const/16 v6, 0x12c

    const/16 v7, 0x190

    invoke-direct {v5, v6, v7}, Lcom/d/a/b/a/f;-><init>(II)V

    invoke-virtual {v0, v1, v5, v2}, Lcom/d/a/b/f;->a(Ljava/lang/String;Lcom/d/a/b/a/f;Lcom/d/a/b/d;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 4098
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$66;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->H(Lcom/xueqiu/android/message/ChatActivity;)Lcom/d/a/b/f;

    move-result-object v0

    new-instance v5, Lcom/d/a/b/a/f;

    invoke-direct {v5, v9, v10}, Lcom/d/a/b/a/f;-><init>(II)V

    invoke-virtual {v0, v1, v5, v2}, Lcom/d/a/b/f;->a(Ljava/lang/String;Lcom/d/a/b/a/f;Lcom/d/a/b/d;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 3132
    :cond_5
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3133
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity$66;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v2}, Lcom/xueqiu/android/base/util/ad;->a(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3134
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3136
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$66;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->saveMessage(Lcom/xueqiu/android/message/model/Message;)V

    .line 3137
    invoke-virtual {v3, v4}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 3139
    invoke-static {}, Lcom/xueqiu/android/message/ChatActivity;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const-string v9, "test.jpeg"

    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$66;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v10

    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$66;->b:Lcom/xueqiu/android/message/ChatActivity;

    .line 3140
    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v6

    new-instance v0, Lcom/xueqiu/android/message/ChatActivity$66$1;

    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity$66;->b:Lcom/xueqiu/android/message/ChatActivity;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/message/ChatActivity$66$1;-><init>(Lcom/xueqiu/android/message/ChatActivity$66;Lcom/xueqiu/android/base/b/q;Lrx/i;Lcom/xueqiu/android/message/model/Message;Ljava/io/ByteArrayOutputStream;)V

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-wide v4, v10

    move-object v7, v0

    .line 3139
    invoke-virtual/range {v1 .. v7}, Lcom/xueqiu/android/base/b/ai;->a([BLjava/lang/String;JZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto/16 :goto_0
.end method
