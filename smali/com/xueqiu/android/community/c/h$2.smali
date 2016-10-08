.class final Lcom/xueqiu/android/community/c/h$2;
.super Ljava/lang/Object;
.source "HotTopicFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/c/h;->u()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/h;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/h;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/xueqiu/android/community/c/h$2;->a:Lcom/xueqiu/android/community/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 278
    iget-object v0, p0, Lcom/xueqiu/android/community/c/h$2;->a:Lcom/xueqiu/android/community/c/h;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/h;->b(Lcom/xueqiu/android/community/c/h;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/r;->d()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 279
    iget-object v1, p0, Lcom/xueqiu/android/community/c/h$2;->a:Lcom/xueqiu/android/community/c/h;

    invoke-static {v1}, Lcom/xueqiu/android/community/c/h;->b(Lcom/xueqiu/android/community/c/h;)Lcom/xueqiu/android/common/r;

    move-result-object v1

    .line 1367
    iget-object v1, v1, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 279
    sub-int v0, p3, v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/a/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 280
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/community/c/h$2;->a:Lcom/xueqiu/android/community/c/h;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/c/h;->f()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    const-string v2, "status"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 282
    iget-object v0, p0, Lcom/xueqiu/android/community/c/h$2;->a:Lcom/xueqiu/android/community/c/h;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/community/c/h;->a(Landroid/content/Intent;I)V

    .line 283
    return-void
.end method
