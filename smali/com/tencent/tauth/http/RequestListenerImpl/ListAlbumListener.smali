.class public Lcom/tencent/tauth/http/RequestListenerImpl/ListAlbumListener;
.super Lcom/tencent/tauth/http/BaseRequestListener;
.source "ListAlbumListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ListAlbumListener"


# instance fields
.field private mCallback:Lcom/tencent/tauth/http/Callback;


# direct methods
.method public constructor <init>(Lcom/tencent/tauth/http/Callback;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/tencent/tauth/http/BaseRequestListener;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/tencent/tauth/http/RequestListenerImpl/ListAlbumListener;->mCallback:Lcom/tencent/tauth/http/Callback;

    .line 24
    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 18

    .prologue
    .line 28
    invoke-super/range {p0 .. p2}, Lcom/tencent/tauth/http/BaseRequestListener;->onComplete(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/tencent/tauth/http/ParseResoneJson;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 32
    const/4 v2, 0x0

    .line 33
    const-string v3, ""
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/tencent/tauth/http/CommonException; {:try_start_0 .. :try_end_0} :catch_3

    .line 35
    :try_start_1
    const-string v5, "ret"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 36
    const-string v5, "msg"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/tencent/tauth/http/CommonException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    move-object/from16 v17, v3

    move v3, v2

    move-object/from16 v2, v17

    .line 41
    :goto_0
    if-nez v3, :cond_1

    .line 42
    :try_start_2
    const-string v2, "albumnum"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 43
    const-string v2, "album"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 44
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 45
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v13, :cond_0

    .line 56
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tauth/http/RequestListenerImpl/ListAlbumListener;->mCallback:Lcom/tencent/tauth/http/Callback;

    invoke-interface {v2, v15}, Lcom/tencent/tauth/http/Callback;->onSuccess(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/tencent/tauth/http/CommonException; {:try_start_2 .. :try_end_2} :catch_3

    .line 70
    :goto_2
    const-string v2, "ListAlbumListener"

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/tencent/tauth/http/TDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void

    :catch_0
    move-exception v5

    move-object/from16 v17, v3

    move v3, v2

    move-object/from16 v2, v17

    goto :goto_0

    .line 46
    :cond_0
    :try_start_3
    invoke-virtual {v14, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 47
    new-instance v3, Lcom/tencent/tauth/bean/Album;

    const-string v4, "albumid"

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 48
    const-string v5, "classid"

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 49
    const-string v6, "createtime"

    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 50
    const-string v8, "desc"

    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 51
    const-string v9, "name"

    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 52
    const-string v10, "picnum"

    invoke-virtual {v12, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    int-to-long v10, v10

    .line 53
    const-string v16, "priv"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 47
    invoke-direct/range {v3 .. v12}, Lcom/tencent/tauth/bean/Album;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;JI)V

    .line 54
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 58
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tauth/http/RequestListenerImpl/ListAlbumListener;->mCallback:Lcom/tencent/tauth/http/Callback;

    invoke-interface {v4, v3, v2}, Lcom/tencent/tauth/http/Callback;->onFail(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/tencent/tauth/http/CommonException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    .line 60
    :catch_1
    move-exception v2

    .line 61
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tauth/http/RequestListenerImpl/ListAlbumListener;->mCallback:Lcom/tencent/tauth/http/Callback;

    const/high16 v4, -0x80000000

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/tencent/tauth/http/Callback;->onFail(ILjava/lang/String;)V

    .line 62
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    .line 63
    :catch_2
    move-exception v2

    .line 64
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tauth/http/RequestListenerImpl/ListAlbumListener;->mCallback:Lcom/tencent/tauth/http/Callback;

    const/high16 v4, -0x80000000

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/tencent/tauth/http/Callback;->onFail(ILjava/lang/String;)V

    .line 65
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 66
    :catch_3
    move-exception v2

    .line 67
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tauth/http/RequestListenerImpl/ListAlbumListener;->mCallback:Lcom/tencent/tauth/http/Callback;

    const/high16 v4, -0x80000000

    invoke-virtual {v2}, Lcom/tencent/tauth/http/CommonException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/tencent/tauth/http/Callback;->onFail(ILjava/lang/String;)V

    .line 68
    invoke-virtual {v2}, Lcom/tencent/tauth/http/CommonException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tencent/tauth/http/RequestListenerImpl/ListAlbumListener;->mCallback:Lcom/tencent/tauth/http/Callback;

    const/high16 v1, -0x80000000

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Resource not found:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/tauth/http/Callback;->onFail(ILjava/lang/String;)V

    .line 76
    return-void
.end method

.method public onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/tauth/http/RequestListenerImpl/ListAlbumListener;->mCallback:Lcom/tencent/tauth/http/Callback;

    const/high16 v1, -0x80000000

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Network Error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/tauth/http/Callback;->onFail(ILjava/lang/String;)V

    .line 81
    return-void
.end method
