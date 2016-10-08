.class final Landroid/support/v7/widget/g$2;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/g;->a()V
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Landroid/support/v7/widget/g;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/g;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Landroid/support/v7/widget/g$2;->b:Landroid/support/v7/widget/g;

    iput-object p2, p0, Landroid/support/v7/widget/g$2;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 143
    iget-object v0, p0, Landroid/support/v7/widget/g$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/h;

    .line 144
    iget-object v5, p0, Landroid/support/v7/widget/g$2;->b:Landroid/support/v7/widget/g;

    .line 8333
    iget-object v1, v0, Landroid/support/v7/widget/h;->a:Landroid/support/v7/widget/ao;

    .line 8334
    if-nez v1, :cond_2

    move-object v1, v2

    .line 8335
    :goto_1
    iget-object v3, v0, Landroid/support/v7/widget/h;->b:Landroid/support/v7/widget/ao;

    .line 8336
    if-eqz v3, :cond_3

    iget-object v3, v3, Landroid/support/v7/widget/ao;->a:Landroid/view/View;

    .line 8337
    :goto_2
    if-eqz v1, :cond_1

    .line 8338
    iget-object v6, v5, Landroid/support/v7/widget/g;->g:Ljava/util/ArrayList;

    iget-object v7, v0, Landroid/support/v7/widget/h;->a:Landroid/support/v7/widget/ao;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8339
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->o(Landroid/view/View;)Landroid/support/v4/view/dc;

    move-result-object v1

    .line 8967
    iget-wide v6, v5, Landroid/support/v7/widget/v;->l:J

    .line 8339
    invoke-virtual {v1, v6, v7}, Landroid/support/v4/view/dc;->a(J)Landroid/support/v4/view/dc;

    move-result-object v1

    .line 8341
    iget v6, v0, Landroid/support/v7/widget/h;->e:I

    iget v7, v0, Landroid/support/v7/widget/h;->c:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v1, v6}, Landroid/support/v4/view/dc;->b(F)Landroid/support/v4/view/dc;

    .line 8342
    iget v6, v0, Landroid/support/v7/widget/h;->f:I

    iget v7, v0, Landroid/support/v7/widget/h;->d:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v1, v6}, Landroid/support/v4/view/dc;->c(F)Landroid/support/v4/view/dc;

    .line 8343
    invoke-virtual {v1, v10}, Landroid/support/v4/view/dc;->a(F)Landroid/support/v4/view/dc;

    move-result-object v6

    new-instance v7, Landroid/support/v7/widget/g$7;

    invoke-direct {v7, v5, v0, v1}, Landroid/support/v7/widget/g$7;-><init>(Landroid/support/v7/widget/g;Landroid/support/v7/widget/h;Landroid/support/v4/view/dc;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/dc;->a(Landroid/support/v4/view/do;)Landroid/support/v4/view/dc;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/dc;->b()V

    .line 8361
    :cond_1
    if-eqz v3, :cond_0

    .line 8362
    iget-object v1, v5, Landroid/support/v7/widget/g;->g:Ljava/util/ArrayList;

    iget-object v6, v0, Landroid/support/v7/widget/h;->b:Landroid/support/v7/widget/ao;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8363
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->o(Landroid/view/View;)Landroid/support/v4/view/dc;

    move-result-object v1

    .line 8364
    invoke-virtual {v1, v10}, Landroid/support/v4/view/dc;->b(F)Landroid/support/v4/view/dc;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/support/v4/view/dc;->c(F)Landroid/support/v4/view/dc;

    move-result-object v6

    .line 9967
    iget-wide v8, v5, Landroid/support/v7/widget/v;->l:J

    .line 8364
    invoke-virtual {v6, v8, v9}, Landroid/support/v4/view/dc;->a(J)Landroid/support/v4/view/dc;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/support/v4/view/dc;->a(F)Landroid/support/v4/view/dc;

    move-result-object v6

    new-instance v7, Landroid/support/v7/widget/g$8;

    invoke-direct {v7, v5, v0, v1, v3}, Landroid/support/v7/widget/g$8;-><init>(Landroid/support/v7/widget/g;Landroid/support/v7/widget/h;Landroid/support/v4/view/dc;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/dc;->a(Landroid/support/v4/view/do;)Landroid/support/v4/view/dc;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/dc;->b()V

    goto :goto_0

    .line 8334
    :cond_2
    iget-object v1, v1, Landroid/support/v7/widget/ao;->a:Landroid/view/View;

    goto :goto_1

    :cond_3
    move-object v3, v2

    .line 8336
    goto :goto_2

    .line 146
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/g$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 147
    iget-object v0, p0, Landroid/support/v7/widget/g$2;->b:Landroid/support/v7/widget/g;

    .line 10034
    iget-object v0, v0, Landroid/support/v7/widget/g;->c:Ljava/util/ArrayList;

    .line 147
    iget-object v1, p0, Landroid/support/v7/widget/g$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method
