.class public Lcom/xueqiu/android/community/model/StatusFacetCount;
.super Ljava/lang/Object;
.source "StatusFacetCount.java"


# instance fields
.field private source:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private statusCount:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/xueqiu/android/community/model/StatusFacetCount;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/xueqiu/android/community/model/StatusFacetCount;->statusCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/xueqiu/android/community/model/StatusFacetCount;->source:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setStatusCount(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/xueqiu/android/community/model/StatusFacetCount;->statusCount:Ljava/lang/Integer;

    .line 31
    return-void
.end method
