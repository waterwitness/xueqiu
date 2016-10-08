.class public Lcom/xueqiu/android/community/model/RecommendCard;
.super Ljava/lang/Object;
.source "RecommendCard.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private elements:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private location:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/xueqiu/android/community/model/RecommendCard;->elements:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/community/model/RecommendCard;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/xueqiu/android/community/model/RecommendCard;->location:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/xueqiu/android/community/model/RecommendCard;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/xueqiu/android/community/model/RecommendCard;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setElements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    iput-object p1, p0, Lcom/xueqiu/android/community/model/RecommendCard;->elements:Ljava/util/List;

    .line 65
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/xueqiu/android/community/model/RecommendCard;->id:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setLocation(I)V
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/xueqiu/android/community/model/RecommendCard;->location:I

    .line 32
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/xueqiu/android/community/model/RecommendCard;->name:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/xueqiu/android/community/model/RecommendCard;->type:Ljava/lang/String;

    .line 56
    return-void
.end method
