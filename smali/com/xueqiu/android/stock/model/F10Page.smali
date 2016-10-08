.class public Lcom/xueqiu/android/stock/model/F10Page;
.super Ljava/lang/Object;
.source "F10Page.java"


# instance fields
.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private tables:[Lcom/xueqiu/android/stock/model/F10Table;
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
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/F10Page;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTables()[Lcom/xueqiu/android/stock/model/F10Table;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/F10Page;->tables:[Lcom/xueqiu/android/stock/model/F10Table;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/F10Page;->name:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setTables([Lcom/xueqiu/android/stock/model/F10Table;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/F10Page;->tables:[Lcom/xueqiu/android/stock/model/F10Table;

    .line 29
    return-void
.end method
