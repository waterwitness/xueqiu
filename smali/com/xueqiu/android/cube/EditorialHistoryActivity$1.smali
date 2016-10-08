.class final Lcom/xueqiu/android/cube/EditorialHistoryActivity$1;
.super Ljava/lang/Object;
.source "EditorialHistoryActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/EditorialHistoryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xueqiu/android/common/t",
        "<",
        "Lcom/xueqiu/android/cube/model/Editorial;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/xueqiu/android/cube/EditorialHistoryActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/EditorialHistoryActivity;)V
    .locals 1

    .prologue
    .line 49
    iput-object p1, p0, Lcom/xueqiu/android/cube/EditorialHistoryActivity$1;->b:Lcom/xueqiu/android/cube/EditorialHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/xueqiu/android/cube/EditorialHistoryActivity$1;->a:I

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
            "Lcom/xueqiu/android/cube/model/Editorial;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Editorial;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x2

    iput v0, p0, Lcom/xueqiu/android/cube/EditorialHistoryActivity$1;->a:I

    .line 55
    iget-object v0, p0, Lcom/xueqiu/android/cube/EditorialHistoryActivity$1;->b:Lcom/xueqiu/android/cube/EditorialHistoryActivity;

    iget v1, p0, Lcom/xueqiu/android/cube/EditorialHistoryActivity$1;->a:I

    invoke-static {v0, v1, p1}, Lcom/xueqiu/android/cube/EditorialHistoryActivity;->a(Lcom/xueqiu/android/cube/EditorialHistoryActivity;ILcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;

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
            "Lcom/xueqiu/android/cube/model/Editorial;",
            ">;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    invoke-static {p2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 68
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-nez p3, :cond_1

    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/cube/EditorialHistoryActivity$1;->b:Lcom/xueqiu/android/cube/EditorialHistoryActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/EditorialHistoryActivity;->a(Lcom/xueqiu/android/cube/EditorialHistoryActivity;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/r;->c()V

    .line 74
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
            "Lcom/xueqiu/android/cube/model/Editorial;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Editorial;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 60
    iget v0, p0, Lcom/xueqiu/android/cube/EditorialHistoryActivity$1;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/cube/EditorialHistoryActivity$1;->a:I

    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/cube/EditorialHistoryActivity$1;->b:Lcom/xueqiu/android/cube/EditorialHistoryActivity;

    iget v1, p0, Lcom/xueqiu/android/cube/EditorialHistoryActivity$1;->a:I

    invoke-static {v0, v1, p1}, Lcom/xueqiu/android/cube/EditorialHistoryActivity;->a(Lcom/xueqiu/android/cube/EditorialHistoryActivity;ILcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;

    move-result-object v0

    return-object v0
.end method
