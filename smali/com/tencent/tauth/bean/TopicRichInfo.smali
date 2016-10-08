.class public Lcom/tencent/tauth/bean/TopicRichInfo;
.super Ljava/lang/Object;
.source "TopicRichInfo.java"


# instance fields
.field private mRtype:I

.field private mUrl2:Ljava/lang/String;

.field private mUrl3:Ljava/lang/String;

.field private mWho:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/tencent/tauth/bean/TopicRichInfo;->mRtype:I

    .line 14
    iput-object p2, p0, Lcom/tencent/tauth/bean/TopicRichInfo;->mUrl2:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/tencent/tauth/bean/TopicRichInfo;->mUrl3:Ljava/lang/String;

    .line 16
    iput p4, p0, Lcom/tencent/tauth/bean/TopicRichInfo;->mWho:I

    .line 17
    return-void
.end method


# virtual methods
.method public getRtype()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/tencent/tauth/bean/TopicRichInfo;->mRtype:I

    return v0
.end method

.method public getUrl2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/tauth/bean/TopicRichInfo;->mUrl2:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/tauth/bean/TopicRichInfo;->mUrl3:Ljava/lang/String;

    return-object v0
.end method

.method public getWho()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/tencent/tauth/bean/TopicRichInfo;->mWho:I

    return v0
.end method

.method public setRtype(I)V
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/tencent/tauth/bean/TopicRichInfo;->mRtype:I

    .line 23
    return-void
.end method

.method public setUrl2(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/tencent/tauth/bean/TopicRichInfo;->mUrl2:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setUrl3(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/tencent/tauth/bean/TopicRichInfo;->mUrl3:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setWho(I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/tencent/tauth/bean/TopicRichInfo;->mWho:I

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rtype: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/tauth/bean/TopicRichInfo;->mRtype:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nurl2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tauth/bean/TopicRichInfo;->mUrl2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nurl3: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tauth/bean/TopicRichInfo;->mUrl3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nwho: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tauth/bean/TopicRichInfo;->mWho:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
