.class public Lcom/xueqiu/android/community/model/Question;
.super Ljava/lang/Object;
.source "Question.java"


# instance fields
.field private aid:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private answer:Lcom/xueqiu/android/community/model/Comment;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private qid:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private qtype:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private target:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private user:Lcom/xueqiu/android/community/model/User;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAid()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Question;->aid:J

    return-wide v0
.end method

.method public getAnswer()Lcom/xueqiu/android/community/model/Comment;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Question;->answer:Lcom/xueqiu/android/community/model/Comment;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Question;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getQid()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Question;->qid:J

    return-wide v0
.end method

.method public getQtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Question;->qtype:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Question;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Question;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/xueqiu/android/community/model/User;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Question;->user:Lcom/xueqiu/android/community/model/User;

    return-object v0
.end method

.method public setAid(J)V
    .locals 1

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/Question;->aid:J

    .line 39
    return-void
.end method

.method public setAnswer(Lcom/xueqiu/android/community/model/Comment;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Question;->answer:Lcom/xueqiu/android/community/model/Comment;

    .line 87
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Question;->description:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setQid(J)V
    .locals 1

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/Question;->qid:J

    .line 63
    return-void
.end method

.method public setQtype(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Question;->qtype:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Question;->target:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Question;->text:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setUser(Lcom/xueqiu/android/community/model/User;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Question;->user:Lcom/xueqiu/android/community/model/User;

    .line 79
    return-void
.end method
