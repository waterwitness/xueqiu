.class final Lcom/tencent/open/g;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field private c:Ljava/lang/ref/WeakReference;

.field private d:Ljava/lang/String;

.field private e:Lcom/tencent/tauth/IUiListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/open/g;->c:Ljava/lang/ref/WeakReference;

    .line 149
    iput-object p2, p0, Lcom/tencent/open/g;->d:Ljava/lang/String;

    .line 150
    iput-object p3, p0, Lcom/tencent/open/g;->a:Ljava/lang/String;

    .line 151
    iput-object p4, p0, Lcom/tencent/open/g;->b:Ljava/lang/String;

    .line 152
    iput-object p5, p0, Lcom/tencent/open/g;->e:Lcom/tencent/tauth/IUiListener;

    .line 153
    return-void
.end method

.method static synthetic a(Lcom/tencent/open/g;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1157
    :try_start_0
    invoke-static {p1}, Lcom/tencent/open/Util;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1158
    invoke-virtual {p0, v0}, Lcom/tencent/open/g;->onComplete(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1163
    :goto_0
    return-void

    .line 1160
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1161
    new-instance v0, Lcom/tencent/tauth/UiError;

    const/4 v1, -0x4

    const-string v2, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u6709\u8bef!"

    invoke-direct {v0, v1, v2, p1}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/open/g;->onError(Lcom/tencent/tauth/UiError;)V

    goto :goto_0
.end method


# virtual methods
.method public final onCancel()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/tencent/open/g;->e:Lcom/tencent/tauth/IUiListener;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/tencent/open/g;->e:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/open/g;->e:Lcom/tencent/tauth/IUiListener;

    .line 191
    :cond_0
    return-void
.end method

.method public final onComplete(Lorg/json/JSONObject;)V
    .locals 14

    .prologue
    const-wide/16 v6, 0x0

    .line 168
    invoke-static {}, Lcom/tencent/open/cgireport/ReportManager;->a()Lcom/tencent/open/cgireport/ReportManager;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/open/g;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/open/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_H5"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-string v0, "ret"

    const/4 v8, -0x6

    invoke-virtual {p1, v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    iget-object v11, p0, Lcom/tencent/open/g;->b:Ljava/lang/String;

    iget-object v12, p0, Lcom/tencent/open/g;->a:Ljava/lang/String;

    const-string v13, "1000067"

    move-wide v8, v6

    invoke-virtual/range {v1 .. v13}, Lcom/tencent/open/cgireport/ReportManager;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/tencent/open/g;->e:Lcom/tencent/tauth/IUiListener;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/tencent/open/g;->e:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onComplete(Lorg/json/JSONObject;)V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/open/g;->e:Lcom/tencent/tauth/IUiListener;

    .line 173
    :cond_0
    return-void
.end method

.method public final onError(Lcom/tencent/tauth/UiError;)V
    .locals 14

    .prologue
    const-wide/16 v6, 0x0

    .line 177
    iget-object v0, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/open/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 178
    :goto_0
    invoke-static {}, Lcom/tencent/open/cgireport/ReportManager;->a()Lcom/tencent/open/cgireport/ReportManager;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/open/g;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/open/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_H5"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget v10, p1, Lcom/tencent/tauth/UiError;->errorCode:I

    iget-object v11, p0, Lcom/tencent/open/g;->b:Ljava/lang/String;

    const-string v13, "1000067"

    move-wide v8, v6

    invoke-virtual/range {v1 .. v13}, Lcom/tencent/open/cgireport/ReportManager;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/tencent/open/g;->e:Lcom/tencent/tauth/IUiListener;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/tencent/open/g;->e:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/open/g;->e:Lcom/tencent/tauth/IUiListener;

    .line 183
    :cond_0
    return-void

    .line 177
    :cond_1
    iget-object v12, p0, Lcom/tencent/open/g;->a:Ljava/lang/String;

    goto :goto_0
.end method
