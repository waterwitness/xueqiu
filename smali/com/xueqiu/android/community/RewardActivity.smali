.class public Lcom/xueqiu/android/community/RewardActivity;
.super Lcom/xueqiu/android/common/b;
.source "RewardActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# instance fields
.field private j:Ljava/lang/String;

.field private k:J

.field private p:Ljava/lang/String;

.field private q:Lcom/xueqiu/android/common/widget/SNBWebView;

.field private r:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 54
    const-string v0, "https://xueqiu.com/c/donate"

    iput-object v0, p0, Lcom/xueqiu/android/community/RewardActivity;->p:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/RewardActivity;->r:Z

    .line 226
    return-void
.end method

.method public static a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 270
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    :try_start_0
    const-string v0, ""

    .line 276
    const-string v1, "javascript:setTimeout(function(){%s(%s)}, 0)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 278
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    .line 279
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    const-string v1, "RewardActivity"

    const-string v2, "evaluate:%s(%s)"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object v7, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 281
    :cond_2
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/RewardActivity;)Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/community/RewardActivity;->r:Z

    return v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Z
    .locals 14

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 127
    const-string v0, "js:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "js://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 128
    :cond_0
    const-string v0, ""

    .line 129
    const-string v2, "js://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_1
    :goto_0
    :try_start_0
    const-string v2, "utf-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 139
    :goto_1
    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 140
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 141
    const-string v2, "name"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 142
    const-string v2, "name"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 143
    const-string v3, "replyComment"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 144
    const-string v2, "success"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "success"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 145
    :goto_2
    const-string v2, "cancel"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "cancel"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 146
    :goto_3
    const-string v2, "erro"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "erro"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 147
    :goto_4
    const-string v2, "complete"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "complete"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 148
    :goto_5
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 3166
    :goto_6
    const-string v1, "content"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 3167
    :goto_7
    const-string v2, "statusId"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "statusId"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 3168
    :goto_8
    const-string v7, "commentId"

    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "commentId"

    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    .line 3169
    :goto_9
    const-string v8, "username"

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "username"

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    .line 3170
    :goto_a
    const-string v11, "isRetweet"

    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    const-string v11, "isRetweet"

    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v9

    .line 3173
    :goto_b
    new-instance v10, Landroid/content/Intent;

    const-class v11, Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {v10, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3175
    new-instance v11, Lcom/xueqiu/android/community/model/Comment;

    invoke-direct {v11}, Lcom/xueqiu/android/community/model/Comment;-><init>()V

    .line 3176
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/xueqiu/android/community/model/Comment;->setId(J)V

    .line 3177
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/xueqiu/android/community/model/Comment;->setStatusId(J)V

    .line 3178
    invoke-virtual {v11, v1}, Lcom/xueqiu/android/community/model/Comment;->setText(Ljava/lang/String;)V

    .line 3179
    invoke-virtual {v11, v8}, Lcom/xueqiu/android/community/model/Comment;->setScreenName(Ljava/lang/String;)V

    .line 3181
    const-string v7, "extra_write_type"

    invoke-virtual {v10, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3182
    const-string v7, "extra_comment"

    invoke-virtual {v10, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3183
    const-string v7, "extra_status_id"

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3184
    const-string v2, "extra_isretweet"

    invoke-virtual {v10, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3185
    const-string v0, "extra_reply_somebody"

    invoke-virtual {v10, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3187
    const-string v0, "extra_retweet_text"

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3188
    const-string v0, "JSBridge"

    const-string v1, "replyComment"

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3190
    new-instance v0, Lcom/xueqiu/android/community/k;

    iget-object v2, p0, Lcom/xueqiu/android/community/RewardActivity;->q:Lcom/xueqiu/android/common/widget/SNBWebView;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/xueqiu/android/community/k;-><init>(Lcom/xueqiu/android/community/RewardActivity;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4067
    iput-object v0, p0, Lcom/xueqiu/android/common/b;->o:Landroid/content/BroadcastReceiver;

    .line 3194
    invoke-static {p0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "replyComment"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 3195
    invoke-virtual {p0, v10}, Lcom/xueqiu/android/community/RewardActivity;->startActivity(Landroid/content/Intent;)V

    .line 161
    :goto_c
    return v9

    .line 131
    :cond_2
    const-string v2, "js:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 137
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_1

    .line 144
    :cond_3
    const-string v3, ""

    goto/16 :goto_2

    .line 145
    :cond_4
    const-string v5, ""

    goto/16 :goto_3

    .line 146
    :cond_5
    const-string v4, ""

    goto/16 :goto_4

    .line 147
    :cond_6
    const-string v6, ""

    goto/16 :goto_5

    :cond_7
    move-object v0, v1

    .line 148
    goto/16 :goto_6

    .line 3166
    :cond_8
    const-string v1, ""

    goto/16 :goto_7

    .line 3167
    :cond_9
    const-string v2, ""

    goto/16 :goto_8

    .line 3168
    :cond_a
    const-string v7, ""

    goto/16 :goto_9

    .line 3169
    :cond_b
    const-string v8, ""

    goto/16 :goto_a

    :cond_c
    move v0, v10

    .line 3170
    goto/16 :goto_b

    .line 150
    :cond_d
    const-string v3, "newRetweet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 151
    const-string v2, "success"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "success"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 152
    :goto_d
    const-string v2, "cancel"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "cancel"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 153
    :goto_e
    const-string v2, "erro"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "erro"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 154
    :goto_f
    const-string v2, "complete"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "complete"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 155
    :goto_10
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    move-object v2, v1

    .line 4200
    :goto_11
    if-nez v2, :cond_13

    .line 4201
    iget-object v0, p0, Lcom/xueqiu/android/community/RewardActivity;->q:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-static {v0, v4}, Lcom/xueqiu/android/community/RewardActivity;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 151
    :cond_e
    const-string v3, ""

    goto :goto_d

    .line 152
    :cond_f
    const-string v5, ""

    goto :goto_e

    .line 153
    :cond_10
    const-string v4, ""

    goto :goto_f

    .line 154
    :cond_11
    const-string v6, ""

    goto :goto_10

    :cond_12
    move-object v2, v1

    .line 155
    goto :goto_11

    .line 4205
    :cond_13
    const-string v0, "content"

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "content"

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 4206
    :goto_12
    const-string v1, "statusId"

    invoke-virtual {v2, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "statusId"

    invoke-virtual {v2, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 4207
    :goto_13
    const-string v7, "username"

    invoke-virtual {v2, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    const-string v7, "username"

    invoke-virtual {v2, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 4210
    :cond_14
    new-instance v7, Landroid/content/Intent;

    const-class v2, Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {v7, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4211
    const-string v2, "extra_write_type"

    const/4 v8, 0x2

    invoke-virtual {v7, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4212
    const-string v2, "extra_status_id"

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4214
    const-string v1, "extra_retweet_text"

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4215
    const-string v0, "JSBridge"

    const-string v1, "newRetweet"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4217
    new-instance v0, Lcom/xueqiu/android/community/k;

    iget-object v2, p0, Lcom/xueqiu/android/community/RewardActivity;->q:Lcom/xueqiu/android/common/widget/SNBWebView;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/xueqiu/android/community/k;-><init>(Lcom/xueqiu/android/community/RewardActivity;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5067
    iput-object v0, p0, Lcom/xueqiu/android/common/b;->o:Landroid/content/BroadcastReceiver;

    .line 4221
    invoke-static {p0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "newRetweet"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 4223
    invoke-virtual {p0, v7}, Lcom/xueqiu/android/community/RewardActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_c

    .line 4205
    :cond_15
    const-string v0, ""

    goto :goto_12

    .line 4206
    :cond_16
    const-string v1, ""

    goto :goto_13

    :cond_17
    move v9, v10

    .line 161
    goto/16 :goto_c
.end method

.method public finish()V
    .locals 4

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/xueqiu/android/community/RewardActivity;->r:Z

    if-eqz v0, :cond_0

    .line 332
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 333
    const-string v1, "extra_donate_to_type"

    iget-object v2, p0, Lcom/xueqiu/android/community/RewardActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    const-string v1, "extra_donate_to_id"

    iget-wide v2, p0, Lcom/xueqiu/android/community/RewardActivity;->k:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 335
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/xueqiu/android/community/RewardActivity;->setResult(ILandroid/content/Intent;)V

    .line 337
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->finish()V

    .line 338
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    const/16 v0, 0x63

    .line 353
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 354
    if-ne p1, v0, :cond_0

    if-ne p2, v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/xueqiu/android/community/RewardActivity;->q:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->reload()V

    .line 357
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 311
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onBackPressed()V

    .line 312
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 59
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/RewardActivity;->setContentView(I)V

    .line 61
    const-string v0, "\u96ea\u7403\u5e01\u6253\u8d4f"

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/RewardActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p0}, Lcom/xueqiu/android/community/RewardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_donate_to_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/RewardActivity;->j:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/xueqiu/android/community/RewardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_donate_to_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/community/RewardActivity;->k:J

    .line 1085
    const v0, 0x7f0e016a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/RewardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBWebView;

    iput-object v0, p0, Lcom/xueqiu/android/community/RewardActivity;->q:Lcom/xueqiu/android/common/widget/SNBWebView;

    .line 1089
    iget-object v0, p0, Lcom/xueqiu/android/community/RewardActivity;->q:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1090
    iget-object v0, p0, Lcom/xueqiu/android/community/RewardActivity;->q:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 1091
    iget-object v0, p0, Lcom/xueqiu/android/community/RewardActivity;->q:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 1092
    iget-object v0, p0, Lcom/xueqiu/android/community/RewardActivity;->q:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 1093
    iget-object v0, p0, Lcom/xueqiu/android/community/RewardActivity;->q:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1094
    iget-object v0, p0, Lcom/xueqiu/android/community/RewardActivity;->q:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1096
    iget-object v0, p0, Lcom/xueqiu/android/community/RewardActivity;->q:Lcom/xueqiu/android/common/widget/SNBWebView;

    new-instance v1, Lcom/xueqiu/android/common/u;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/u;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1097
    iget-object v0, p0, Lcom/xueqiu/android/community/RewardActivity;->q:Lcom/xueqiu/android/common/widget/SNBWebView;

    new-instance v1, Lcom/xueqiu/android/community/RewardActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/RewardActivity$1;-><init>(Lcom/xueqiu/android/community/RewardActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/xueqiu/android/community/RewardActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xueqiu/android/community/RewardActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/xueqiu/android/community/RewardActivity;->q:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/SNBWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Xueqiu Android "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2069
    :goto_0
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 2186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 76
    if-eqz v0, :cond_0

    .line 77
    invoke-static {p0, v4}, Lcom/xueqiu/android/base/t;->a(Landroid/app/Activity;Z)V

    .line 82
    :goto_1
    return-void

    .line 73
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xueqiu/android/community/RewardActivity;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?to_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xueqiu/android/community/RewardActivity;->k:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&to_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/RewardActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/RewardActivity;->p:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/xueqiu/android/community/RewardActivity;->q:Lcom/xueqiu/android/common/widget/SNBWebView;

    iget-object v1, p0, Lcom/xueqiu/android/community/RewardActivity;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/xueqiu/android/community/RewardActivity;->q:Lcom/xueqiu/android/common/widget/SNBWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/RewardActivity;->q:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/xueqiu/android/community/RewardActivity;->q:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xueqiu/android/community/RewardActivity;->q:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 344
    iget-object v0, p0, Lcom/xueqiu/android/community/RewardActivity;->q:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->removeAllViews()V

    .line 345
    iget-object v0, p0, Lcom/xueqiu/android/community/RewardActivity;->q:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->destroy()V

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/community/RewardActivity;->q:Lcom/xueqiu/android/common/widget/SNBWebView;

    .line 348
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onDestroy()V

    .line 349
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/xueqiu/android/community/RewardActivity;->q:Lcom/xueqiu/android/common/widget/SNBWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/RewardActivity;->q:Lcom/xueqiu/android/common/widget/SNBWebView;

    .line 291
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 293
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/xueqiu/android/community/RewardActivity;->q:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->goBack()V

    .line 296
    const/4 v0, 0x1

    .line 298
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/b;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 325
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onRestart()V

    .line 327
    return-void
.end method

.method protected final w_()Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 304
    const-class v2, Lcom/xueqiu/android/common/WebViewActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "scrollX : %d"

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xueqiu/android/community/RewardActivity;->q:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v5}, Lcom/xueqiu/android/common/widget/SNBWebView;->getScrollX()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v2, p0, Lcom/xueqiu/android/community/RewardActivity;->q:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v2}, Lcom/xueqiu/android/common/widget/SNBWebView;->getScrollX()I

    move-result v2

    .line 306
    if-gtz v2, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final x_()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/xueqiu/android/community/RewardActivity;->q:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/xueqiu/android/community/RewardActivity;->q:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->goBack()V

    .line 321
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onBackPressed()V

    goto :goto_0
.end method
