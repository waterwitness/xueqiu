.class final Lcom/xueqiu/android/common/search/SearchActivity$5;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/search/SearchActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/search/SearchActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/search/SearchActivity;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/xueqiu/android/common/search/SearchActivity$5;->a:Lcom/xueqiu/android/common/search/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity$5;->a:Lcom/xueqiu/android/common/search/SearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/SearchActivity;->a(Lcom/xueqiu/android/common/search/SearchActivity;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    .line 1367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 207
    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/a/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Cube;

    .line 209
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/common/search/SearchActivity$5;->a:Lcom/xueqiu/android/common/search/SearchActivity;

    const-class v3, Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    const-string v2, "extra_cube_symbol"

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v2, "extra_cube_id"

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 212
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity$5;->a:Lcom/xueqiu/android/common/search/SearchActivity;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/search/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 213
    return-void
.end method
