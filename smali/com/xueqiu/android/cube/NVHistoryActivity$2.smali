.class final Lcom/xueqiu/android/cube/NVHistoryActivity$2;
.super Ljava/lang/Object;
.source "NVHistoryActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/ptr/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/NVHistoryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/NVHistoryActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/NVHistoryActivity;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$2;->a:Lcom/xueqiu/android/cube/NVHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$2;->a:Lcom/xueqiu/android/cube/NVHistoryActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/NVHistoryActivity;->e(Lcom/xueqiu/android/cube/NVHistoryActivity;)Lcom/xueqiu/android/common/model/PagedList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$2;->a:Lcom/xueqiu/android/cube/NVHistoryActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/NVHistoryActivity;->e(Lcom/xueqiu/android/cube/NVHistoryActivity;)Lcom/xueqiu/android/common/model/PagedList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/PagedList;->getMaxPage()I

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$2;->a:Lcom/xueqiu/android/cube/NVHistoryActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/NVHistoryActivity;->h(Lcom/xueqiu/android/cube/NVHistoryActivity;)I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$2;->a:Lcom/xueqiu/android/cube/NVHistoryActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/NVHistoryActivity;->e(Lcom/xueqiu/android/cube/NVHistoryActivity;)Lcom/xueqiu/android/common/model/PagedList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/PagedList;->getPage()I

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$2;->a:Lcom/xueqiu/android/cube/NVHistoryActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/NVHistoryActivity;->h(Lcom/xueqiu/android/cube/NVHistoryActivity;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$2;->a:Lcom/xueqiu/android/cube/NVHistoryActivity;

    iget-object v1, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$2;->a:Lcom/xueqiu/android/cube/NVHistoryActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/NVHistoryActivity;->e(Lcom/xueqiu/android/cube/NVHistoryActivity;)Lcom/xueqiu/android/common/model/PagedList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/common/model/PagedList;->getPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/NVHistoryActivity;->a(Lcom/xueqiu/android/cube/NVHistoryActivity;I)I

    .line 115
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$2;->a:Lcom/xueqiu/android/cube/NVHistoryActivity;

    iget-object v1, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$2;->a:Lcom/xueqiu/android/cube/NVHistoryActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/NVHistoryActivity;->h(Lcom/xueqiu/android/cube/NVHistoryActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/NVHistoryActivity;->b(Lcom/xueqiu/android/cube/NVHistoryActivity;I)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/cube/NVHistoryActivity$2$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/NVHistoryActivity$2$1;-><init>(Lcom/xueqiu/android/cube/NVHistoryActivity$2;)V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/i;)Lrx/j;

    .line 135
    :cond_0
    return-void
.end method
