.class public Lcom/xueqiu/android/common/model/parser/CountryCodeParser;
.super Lcom/xueqiu/android/common/model/parser/AbstractParser;
.source "CountryCodeParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/model/parser/AbstractParser",
        "<",
        "Lcom/xueqiu/android/common/model/CountryCode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/xueqiu/android/common/model/parser/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/common/model/CountryCode;
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/xueqiu/android/common/model/CountryCode;

    invoke-direct {v0}, Lcom/xueqiu/android/common/model/CountryCode;-><init>()V

    .line 17
    const-string v1, "code"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/CountryCodeParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    const-string v1, "code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/common/model/CountryCode;->code:Ljava/lang/String;

    .line 20
    :cond_0
    const-string v1, "name_en"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/CountryCodeParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    const-string v1, "name_en"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/common/model/CountryCode;->enName:Ljava/lang/String;

    .line 23
    :cond_1
    const-string v1, "name_py"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/CountryCodeParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 24
    const-string v1, "name_py"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/common/model/CountryCode;->pyName:Ljava/lang/String;

    .line 26
    :cond_2
    const-string v1, "name_cn"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/CountryCodeParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 27
    const-string v1, "name_cn"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/common/model/CountryCode;->cnName:Ljava/lang/String;

    .line 29
    :cond_3
    return-object v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/model/parser/CountryCodeParser;->parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/common/model/CountryCode;

    move-result-object v0

    return-object v0
.end method
