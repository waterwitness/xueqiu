.class Lcom/pingan/main/PAVideoManage$4;
.super Ljava/lang/Thread;
.source "PAVideoManage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pingan/main/PAVideoManage;->saveHungUpState()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pingan/main/PAVideoManage;


# direct methods
.method constructor <init>(Lcom/pingan/main/PAVideoManage;)V
    .locals 0

    .prologue
    .line 1328
    iput-object p1, p0, Lcom/pingan/main/PAVideoManage$4;->this$0:Lcom/pingan/main/PAVideoManage;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1331
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1332
    const-string v0, "accessSign"

    const-string v2, "OpenID"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    const-string v0, "Content-Type"

    const-string v2, "application/json"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1337
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1338
    const-string v0, "userid"

    # getter for: Lcom/pingan/main/PAVideoManage;->userId:Ljava/lang/String;
    invoke-static {}, Lcom/pingan/main/PAVideoManage;->access$1200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1341
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage$4;->this$0:Lcom/pingan/main/PAVideoManage;

    # getter for: Lcom/pingan/main/PAVideoManage;->isCall:Z
    invoke-static {v0}, Lcom/pingan/main/PAVideoManage;->access$1300(Lcom/pingan/main/PAVideoManage;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/pingan/main/PAVideoManage$4;->this$0:Lcom/pingan/main/PAVideoManage;

    # getter for: Lcom/pingan/main/PAVideoManage;->callID:Ljava/lang/String;
    invoke-static {v0}, Lcom/pingan/main/PAVideoManage;->access$600(Lcom/pingan/main/PAVideoManage;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1342
    const-string v0, "1"

    .line 1348
    :goto_0
    const-string v3, "state"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1349
    const-string v0, "flowsn"

    iget-object v3, p0, Lcom/pingan/main/PAVideoManage$4;->this$0:Lcom/pingan/main/PAVideoManage;

    # getter for: Lcom/pingan/main/PAVideoManage;->callID:Ljava/lang/String;
    invoke-static {v3}, Lcom/pingan/main/PAVideoManage;->access$600(Lcom/pingan/main/PAVideoManage;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1351
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1352
    invoke-static {v0}, Lcom/pingan/main/PAVideoManage;->formatRequestParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1355
    sget-object v2, Lcom/pingan/a;->y:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/paic/openapi/demo/util/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1359
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1360
    :cond_0
    const-string v0, "shadowfaxghh"

    const-string v1, "\u6302\u65ad\u7ed3\u679c\u8fd4\u56de\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    :cond_1
    :goto_1
    return-void

    .line 1343
    :cond_2
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage$4;->this$0:Lcom/pingan/main/PAVideoManage;

    # getter for: Lcom/pingan/main/PAVideoManage;->isCall:Z
    invoke-static {v0}, Lcom/pingan/main/PAVideoManage;->access$1300(Lcom/pingan/main/PAVideoManage;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1344
    const-string v0, "4"

    goto :goto_0

    .line 1362
    :cond_3
    const-string v1, "shadowfaxghh"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1366
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 1368
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
