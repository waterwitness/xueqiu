.class public Lcom/xueqiu/android/message/model/ApplyCount;
.super Ljava/lang/Object;
.source "ApplyCount.java"


# instance fields
.field private count:I

.field private summary:Ljava/lang/String;

.field private unread:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/xueqiu/android/message/model/ApplyCount;->count:I

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/xueqiu/android/message/model/ApplyCount;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getUnread()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/xueqiu/android/message/model/ApplyCount;->unread:I

    return v0
.end method

.method public setCount(I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/xueqiu/android/message/model/ApplyCount;->count:I

    .line 39
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/xueqiu/android/message/model/ApplyCount;->summary:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setUnread(I)V
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/xueqiu/android/message/model/ApplyCount;->unread:I

    .line 31
    return-void
.end method
