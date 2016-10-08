.class public Lcom/xueqiu/android/message/model/PNMessageParser;
.super Lcom/xueqiu/android/common/model/parser/AbstractParser;
.source "PNMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/model/parser/AbstractParser",
        "<",
        "Lcom/xueqiu/android/message/model/PNMessage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/xueqiu/android/common/model/parser/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/message/model/PNMessage;
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/xueqiu/android/message/model/PNMessage;

    invoke-direct {v0}, Lcom/xueqiu/android/message/model/PNMessage;-><init>()V

    .line 25
    const-string v1, "badge"

    invoke-static {p1, v1}, Lcom/xueqiu/android/message/model/PNMessageParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    const-string v1, "badge"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/PNMessage;->setBadge(Ljava/lang/String;)V

    .line 28
    :cond_0
    const-string v1, "sound"

    invoke-static {p1, v1}, Lcom/xueqiu/android/message/model/PNMessageParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    const-string v1, "sound"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/PNMessage;->setSound(Ljava/lang/String;)V

    .line 31
    :cond_1
    const-string v1, "text"

    invoke-static {p1, v1}, Lcom/xueqiu/android/message/model/PNMessageParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    const-string v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/PNMessage;->setText(Ljava/lang/String;)V

    .line 34
    :cond_2
    const-string v1, "type"

    invoke-static {p1, v1}, Lcom/xueqiu/android/message/model/PNMessageParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 35
    const-string v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/message/model/PNMessage$MessageType;->valueOf(Ljava/lang/String;)Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/PNMessage;->setMsgType(Lcom/xueqiu/android/message/model/PNMessage$MessageType;)V

    .line 37
    :cond_3
    const-string v1, "attachment"

    invoke-static {p1, v1}, Lcom/xueqiu/android/message/model/PNMessageParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 38
    const-string v1, "attachment"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/PNMessage;->setAttachment(Ljava/lang/String;)V

    .line 40
    :cond_4
    const-string v1, "push"

    invoke-static {p1, v1}, Lcom/xueqiu/android/message/model/PNMessageParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 41
    const-string v1, "push"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/PNMessage;->setPush(Z)V

    .line 43
    :cond_5
    return-object v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/message/model/PNMessageParser;->parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/message/model/PNMessage;

    move-result-object v0

    return-object v0
.end method
