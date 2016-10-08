.class final Lcom/xueqiu/android/cube/CubeListActivity$3;
.super Ljava/lang/Object;
.source "CubeListActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeListActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xueqiu/android/common/t",
        "<",
        "Lcom/xueqiu/android/cube/model/Cube;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/xueqiu/android/cube/CubeListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeListActivity;)V
    .locals 1

    .prologue
    .line 121
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeListActivity$3;->b:Lcom/xueqiu/android/cube/CubeListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/cube/CubeListActivity$3;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 126
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/cube/CubeListActivity$3;->a:I

    .line 127
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeListActivity$3;->b:Lcom/xueqiu/android/cube/CubeListActivity;

    iget v1, p0, Lcom/xueqiu/android/cube/CubeListActivity$3;->a:I

    invoke-static {v0, v1, p1}, Lcom/xueqiu/android/cube/CubeListActivity;->a(Lcom/xueqiu/android/cube/CubeListActivity;ILcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeListActivity$3;->b:Lcom/xueqiu/android/cube/CubeListActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/CubeListActivity;->i()V

    .line 139
    if-nez p1, :cond_0

    .line 140
    invoke-static {p2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 143
    :cond_0
    if-nez p3, :cond_1

    .line 144
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeListActivity$3;->b:Lcom/xueqiu/android/cube/CubeListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeListActivity;->b(Lcom/xueqiu/android/cube/CubeListActivity;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/r;->c()V

    .line 146
    :cond_1
    return-void
.end method

.method public final b(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 132
    iget v0, p0, Lcom/xueqiu/android/cube/CubeListActivity$3;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/cube/CubeListActivity$3;->a:I

    .line 133
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeListActivity$3;->b:Lcom/xueqiu/android/cube/CubeListActivity;

    iget v1, p0, Lcom/xueqiu/android/cube/CubeListActivity$3;->a:I

    invoke-static {v0, v1, p1}, Lcom/xueqiu/android/cube/CubeListActivity;->a(Lcom/xueqiu/android/cube/CubeListActivity;ILcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;

    move-result-object v0

    return-object v0
.end method
