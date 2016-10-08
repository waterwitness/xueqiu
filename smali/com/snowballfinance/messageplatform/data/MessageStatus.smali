.class public Lcom/snowballfinance/messageplatform/data/MessageStatus;
.super Ljava/lang/Object;
.source "MessageStatus.java"


# instance fields
.field private error:Ljava/lang/String;

.field private message:Lcom/snowballfinance/messageplatform/data/Message;

.field private notifySender:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageStatus;->notifySender:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageStatus;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Lcom/snowballfinance/messageplatform/data/Message;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageStatus;->message:Lcom/snowballfinance/messageplatform/data/Message;

    return-object v0
.end method

.method public getNotifySender()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageStatus;->notifySender:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/MessageStatus;->error:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setMessage(Lcom/snowballfinance/messageplatform/data/Message;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/MessageStatus;->message:Lcom/snowballfinance/messageplatform/data/Message;

    .line 22
    return-void
.end method

.method public setNotifySender(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/MessageStatus;->notifySender:Ljava/lang/Boolean;

    .line 30
    return-void
.end method
