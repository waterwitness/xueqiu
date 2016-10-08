.class public Lcom/tencent/tauth/http/ParseResoneJson;
.super Ljava/lang/Object;
.source "ParseResoneJson.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 15
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    new-instance v0, Lcom/tencent/tauth/http/CommonException;

    const-string v1, "request failed"

    invoke-direct {v0, v1}, Lcom/tencent/tauth/http/CommonException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_0
    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    const-string p0, "{value : true}"

    .line 22
    :cond_1
    const-string v0, ");"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    const-string v0, "([a-z]*)\\(([^\\)]*)\\);"

    const-string v1, "$2"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 27
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    return-object v0
.end method
