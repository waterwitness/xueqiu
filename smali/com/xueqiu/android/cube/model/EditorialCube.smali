.class public Lcom/xueqiu/android/cube/model/EditorialCube;
.super Ljava/lang/Object;
.source "EditorialCube.java"


# instance fields
.field private editorial:Lcom/xueqiu/android/cube/model/Editorial;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private list:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;"
        }
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
.method public getEditorial()Lcom/xueqiu/android/cube/model/Editorial;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/EditorialCube;->editorial:Lcom/xueqiu/android/cube/model/Editorial;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/EditorialCube;->list:Ljava/util/List;

    return-object v0
.end method

.method public setEditorial(Lcom/xueqiu/android/cube/model/Editorial;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/EditorialCube;->editorial:Lcom/xueqiu/android/cube/model/Editorial;

    .line 24
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/EditorialCube;->list:Ljava/util/List;

    .line 32
    return-void
.end method
