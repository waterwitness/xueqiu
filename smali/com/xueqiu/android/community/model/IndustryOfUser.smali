.class public Lcom/xueqiu/android/community/model/IndustryOfUser;
.super Ljava/lang/Object;
.source "IndustryOfUser.java"


# instance fields
.field private id:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private orderId:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/IndustryOfUser;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/xueqiu/android/community/model/IndustryOfUser;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xueqiu/android/community/model/IndustryOfUser;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/xueqiu/android/community/model/IndustryOfUser;->orderId:I

    return v0
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/xueqiu/android/community/model/IndustryOfUser;->id:I

    .line 52
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/xueqiu/android/community/model/IndustryOfUser;->name:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setOrderId(I)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/xueqiu/android/community/model/IndustryOfUser;->orderId:I

    .line 66
    return-void
.end method
