.class final Lcom/tencent/open/c;
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
    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/open/c;->c:Ljava/lang/ref/WeakReference;

    .line 424
    iput-object p2, p0, Lcom/tencent/open/c;->d:Ljava/lang/String;

    .line 425
    iput-object p3, p0, Lcom/tencent/open/c;->a:Ljava/lang/String;

    .line 426
    iput-object p4, p0, Lcom/tencent/open/c;->b:Ljava/lang/String;

    .line 427
    iput-object p5, p0, Lcom/tencent/open/c;->e:Lcom/tencent/tauth/IUiListener;

    .line 428
    return-void
.end method

.method static synthetic a(Lcom/tencent/open/c;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1432
    :try_start_0
    invoke-static {p1}, Lcom/tencent/open/Util;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1433
    invoke-virtual {p0, v0}, Lcom/tencent/open/c;->onComplete(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1438
    :goto_0
    return-void

    .line 1435
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1436
    new-instance v0, Lcom/tencent/tauth/UiError;

    const/4 v1, -0x4

    const-string v2, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u6709\u8bef!"

    invoke-direct {v0, v1, v2, p1}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/open/c;->onError(Lcom/tencent/tauth/UiError;)V

    goto :goto_0
.end method


# virtual methods
.method public final onCancel()V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/tencent/open/c;->e:Lcom/tencent/tauth/IUiListener;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/tencent/open/c;->e:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/open/c;->e:Lcom/tencent/tauth/IUiListener;

    .line 466
    :cond_0
    return-void
.end method

.method public final onComplete(Lorg/json/JSONObject;)V
    .locals 14

    .prologue
    const-wide/16 v6, 0x0

    .line 443
    invoke-static {}, Lcom/tencent/open/cgireport/ReportManager;->a()Lcom/tencent/open/cgireport/ReportManager;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/open/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/open/c;->d:Ljava/lang/String;

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

    iget-object v11, p0, Lcom/tencent/open/c;->b:Ljava/lang/String;

    iget-object v12, p0, Lcom/tencent/open/c;->a:Ljava/lang/String;

    const-string v13, "1000067"

    move-wide v8, v6

    invoke-virtual/range {v1 .. v13}, Lcom/tencent/open/cgireport/ReportManager;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/tencent/open/c;->e:Lcom/tencent/tauth/IUiListener;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/tencent/open/c;->e:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onComplete(Lorg/json/JSONObject;)V

    .line 446
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/open/c;->e:Lcom/tencent/tauth/IUiListener;

    .line 448
    :cond_0
    return-void
.end method

.method public final onError(Lcom/tencent/tauth/UiError;)V
    .locals 14

    .prologue
    const-wide/16 v6, 0x0

    .line 452
    iget-object v0, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/open/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 453
    :goto_0
    invoke-static {}, Lcom/tencent/open/cgireport/ReportManager;->a()Lcom/tencent/open/cgireport/ReportManager;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/open/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/open/c;->d:Ljava/lang/String;

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

    iget-object v11, p0, Lcom/tencent/open/c;->b:Ljava/lang/String;

    const-string v13, "1000067"

    move-wide v8, v6

    invoke-virtual/range {v1 .. v13}, Lcom/tencent/open/cgireport/ReportManager;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/tencent/open/c;->e:Lcom/tencent/tauth/IUiListener;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/tencent/open/c;->e:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 456
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/open/c;->e:Lcom/tencent/tauth/IUiListener;

    .line 458
    :cond_0
    return-void

    .line 452
    :cond_1
    iget-object v12, p0, Lcom/tencent/open/c;->a:Ljava/lang/String;

    goto :goto_0
.end method
