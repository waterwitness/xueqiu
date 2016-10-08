.class public Lcom/xueqiu/android/stock/model/FundType;
.super Ljava/lang/Object;
.source "FundType.java"


# instance fields
.field private parentType:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private typeName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParentType()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/xueqiu/android/stock/model/FundType;->parentType:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/xueqiu/android/stock/model/FundType;->type:I

    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/FundType;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public setParentType(I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/xueqiu/android/stock/model/FundType;->parentType:I

    .line 40
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/xueqiu/android/stock/model/FundType;->type:I

    .line 32
    return-void
.end method

.method public setTypeName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/FundType;->typeName:Ljava/lang/String;

    .line 48
    return-void
.end method
