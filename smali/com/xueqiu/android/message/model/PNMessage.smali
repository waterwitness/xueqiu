.class public Lcom/xueqiu/android/message/model/PNMessage;
.super Ljava/lang/Object;
.source "PNMessage.java"


# instance fields
.field private attachment:Ljava/lang/String;

.field private badge:Ljava/lang/String;

.field private push:Z

.field private sound:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private type:Lcom/xueqiu/android/message/model/PNMessage$MessageType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/message/model/PNMessage$MessageType;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/xueqiu/android/message/model/PNMessage;->badge:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/xueqiu/android/message/model/PNMessage;->sound:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/xueqiu/android/message/model/PNMessage;->text:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/xueqiu/android/message/model/PNMessage;->type:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    .line 34
    iput-object p5, p0, Lcom/xueqiu/android/message/model/PNMessage;->attachment:Ljava/lang/String;

    .line 35
    iput-boolean p6, p0, Lcom/xueqiu/android/message/model/PNMessage;->push:Z

    .line 36
    return-void
.end method


# virtual methods
.method public getAttachment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/message/model/PNMessage;->attachment:Ljava/lang/String;

    return-object v0
.end method

.method public getBadge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/xueqiu/android/message/model/PNMessage;->badge:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgType()Lcom/xueqiu/android/message/model/PNMessage$MessageType;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/message/model/PNMessage;->type:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    return-object v0
.end method

.method public getSound()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/xueqiu/android/message/model/PNMessage;->sound:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/xueqiu/android/message/model/PNMessage;->text:Ljava/lang/String;

    return-object v0
.end method

.method public isPush()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/xueqiu/android/message/model/PNMessage;->push:Z

    return v0
.end method

.method public setAttachment(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/xueqiu/android/message/model/PNMessage;->attachment:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setBadge(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/xueqiu/android/message/model/PNMessage;->badge:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setMsgType(Lcom/xueqiu/android/message/model/PNMessage$MessageType;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/xueqiu/android/message/model/PNMessage;->type:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    .line 102
    return-void
.end method

.method public setPush(Z)V
    .locals 0

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/xueqiu/android/message/model/PNMessage;->push:Z

    .line 118
    return-void
.end method

.method public setSound(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/xueqiu/android/message/model/PNMessage;->sound:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/xueqiu/android/message/model/PNMessage;->text:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 121
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 123
    :try_start_0
    const-string v0, "text"

    iget-object v2, p0, Lcom/xueqiu/android/message/model/PNMessage;->text:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v0, "badge"

    iget-object v2, p0, Lcom/xueqiu/android/message/model/PNMessage;->badge:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string v0, "sound"

    iget-object v2, p0, Lcom/xueqiu/android/message/model/PNMessage;->sound:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string v0, "attachment"

    iget-object v2, p0, Lcom/xueqiu/android/message/model/PNMessage;->attachment:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v2, "type"

    iget-object v0, p0, Lcom/xueqiu/android/message/model/PNMessage;->type:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/message/model/PNMessage;->type:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/PNMessage$MessageType;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v0, "push"

    iget-boolean v2, p0, Lcom/xueqiu/android/message/model/PNMessage;->push:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_1
    return-object v1

    .line 127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
