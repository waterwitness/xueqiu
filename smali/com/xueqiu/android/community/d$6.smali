.class final Lcom/xueqiu/android/community/d$6;
.super Ljava/lang/Object;
.source "FindPeopleActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/d;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/d;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 252
    iget-object v0, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/d;->c(Lcom/xueqiu/android/community/d;)Lcom/xueqiu/android/community/e;

    move-result-object v0

    iget v0, v0, Lcom/xueqiu/android/community/e;->e:I

    if-ne v0, p3, :cond_0

    .line 303
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/d;->c(Lcom/xueqiu/android/community/d;)Lcom/xueqiu/android/community/e;

    move-result-object v0

    iput p3, v0, Lcom/xueqiu/android/community/e;->e:I

    .line 256
    iget-object v0, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/d;->c(Lcom/xueqiu/android/community/d;)Lcom/xueqiu/android/community/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/e;->notifyDataSetChanged()V

    .line 258
    iget-object v0, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/d;->c(Lcom/xueqiu/android/community/d;)Lcom/xueqiu/android/community/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/e;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/IndustryOfUser;

    .line 260
    iget-object v1, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v1}, Lcom/xueqiu/android/community/d;->d(Lcom/xueqiu/android/community/d;)I

    move-result v1

    .line 261
    iget-object v2, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v2}, Lcom/xueqiu/android/community/d;->f(Lcom/xueqiu/android/community/d;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v3}, Lcom/xueqiu/android/community/d;->e(Lcom/xueqiu/android/community/d;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 263
    iget-object v1, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/IndustryOfUser;->getId()I

    move-result v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/community/d;->a(Lcom/xueqiu/android/community/d;I)I

    .line 264
    iget-object v0, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/d;->f(Lcom/xueqiu/android/community/d;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v1}, Lcom/xueqiu/android/community/d;->d(Lcom/xueqiu/android/community/d;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 265
    iget-object v1, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    iget-object v0, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/d;->f(Lcom/xueqiu/android/community/d;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v2, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v2}, Lcom/xueqiu/android/community/d;->d(Lcom/xueqiu/android/community/d;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/community/d;->b(Lcom/xueqiu/android/community/d;I)I

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/d;->b(Lcom/xueqiu/android/community/d;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    .line 1342
    invoke-virtual {v0}, Lcom/xueqiu/android/common/r;->d()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 269
    iget-object v0, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/d;->b(Lcom/xueqiu/android/community/d;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/xueqiu/android/common/r;->b(Z)V

    .line 271
    iget-object v0, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/d;->b(Lcom/xueqiu/android/community/d;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    .line 1367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 271
    check-cast v0, Lcom/xueqiu/android/community/a/ba;

    .line 273
    iget-object v1, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v1}, Lcom/xueqiu/android/community/d;->d(Lcom/xueqiu/android/community/d;)I

    move-result v1

    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    .line 275
    iget-object v0, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/d;->g(Lcom/xueqiu/android/community/d;)V

    goto/16 :goto_0

    .line 278
    :cond_2
    iget-object v1, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v1}, Lcom/xueqiu/android/community/d;->h(Lcom/xueqiu/android/community/d;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object v1, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v1}, Lcom/xueqiu/android/community/d;->i(Lcom/xueqiu/android/community/d;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object v1, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v1}, Lcom/xueqiu/android/community/d;->d(Lcom/xueqiu/android/community/d;)I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_3

    .line 2304
    iput-boolean v5, v0, Lcom/xueqiu/android/community/a/ba;->f:Z

    .line 2367
    iput-object v6, v0, Lcom/xueqiu/android/community/a/ba;->g:Lcom/xueqiu/android/common/a/e;

    .line 283
    iget-object v0, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/d;->b(Lcom/xueqiu/android/community/d;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/xueqiu/android/common/r;->c(Z)V

    .line 293
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/d;->j(Lcom/xueqiu/android/community/d;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v1}, Lcom/xueqiu/android/community/d;->d(Lcom/xueqiu/android/community/d;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_5

    .line 294
    iget-object v0, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/d;->b(Lcom/xueqiu/android/community/d;)Lcom/xueqiu/android/common/r;

    move-result-object v1

    iget-object v0, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/d;->j(Lcom/xueqiu/android/community/d;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v2, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v2}, Lcom/xueqiu/android/community/d;->d(Lcom/xueqiu/android/community/d;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/r;->a(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 284
    :cond_3
    iget-object v1, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v1}, Lcom/xueqiu/android/community/d;->d(Lcom/xueqiu/android/community/d;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 3304
    iput-boolean v4, v0, Lcom/xueqiu/android/community/a/ba;->f:Z

    .line 286
    iget-object v0, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/d;->b(Lcom/xueqiu/android/community/d;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/xueqiu/android/common/r;->c(Z)V

    goto :goto_1

    .line 4304
    :cond_4
    iput-boolean v4, v0, Lcom/xueqiu/android/community/a/ba;->f:Z

    .line 4367
    iput-object v6, v0, Lcom/xueqiu/android/community/a/ba;->g:Lcom/xueqiu/android/common/a/e;

    .line 290
    iget-object v0, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/d;->b(Lcom/xueqiu/android/community/d;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/common/r;->c(Z)V

    goto :goto_1

    .line 296
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/d;->b(Lcom/xueqiu/android/community/d;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    .line 5367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 296
    invoke-virtual {v0, v6}, Lcom/xueqiu/android/common/a/d;->a(Ljava/util/ArrayList;)V

    .line 297
    iget-object v0, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/d;->b(Lcom/xueqiu/android/community/d;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/r;->a()Z

    .line 298
    iget-object v0, p0, Lcom/xueqiu/android/community/d$6;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/d;->b(Lcom/xueqiu/android/community/d;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    .line 6225
    invoke-virtual {v0, v5}, Lcom/xueqiu/android/common/r;->a(Z)V

    goto/16 :goto_0
.end method
