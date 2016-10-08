.class final Lcom/xueqiu/android/community/StatusDetailActivity$23;
.super Ljava/lang/Object;
.source "StatusDetailActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/StatusDetailActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/a;

.field final synthetic b:Lcom/xueqiu/android/community/StatusDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/community/a;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$23;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$23;->a:Lcom/xueqiu/android/community/a;

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
    .line 372
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$23;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->f(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$23;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->f(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 374
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$23;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->g(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/app/Dialog;

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$23;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->h(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 377
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$23;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->e(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/a/a;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 378
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$23;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$23;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->e(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/a/a;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Comment;

    invoke-static {v1, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/community/model/Comment;)Lcom/xueqiu/android/community/model/Comment;

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$23;->a:Lcom/xueqiu/android/community/a;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xueqiu/android/community/a;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 382
    return-void
.end method
