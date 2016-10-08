.class final Landroid/support/v7/widget/g$1;
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
    .line 116
    iput-object p1, p0, Landroid/support/v7/widget/g$1;->b:Landroid/support/v7/widget/g;

    iput-object p2, p0, Landroid/support/v7/widget/g$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 119
    iget-object v0, p0, Landroid/support/v7/widget/g$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 120
    iget-object v1, p0, Landroid/support/v7/widget/g$1;->b:Landroid/support/v7/widget/g;

    iget-object v2, v0, Landroid/support/v7/widget/i;->a:Landroid/support/v7/widget/ao;

    iget v3, v0, Landroid/support/v7/widget/i;->b:I

    iget v4, v0, Landroid/support/v7/widget/i;->c:I

    iget v5, v0, Landroid/support/v7/widget/i;->d:I

    iget v0, v0, Landroid/support/v7/widget/i;->e:I

    .line 8270
    iget-object v7, v2, Landroid/support/v7/widget/ao;->a:Landroid/view/View;

    .line 8271
    sub-int v3, v5, v3

    .line 8272
    sub-int v4, v0, v4

    .line 8273
    if-eqz v3, :cond_0

    .line 8274
    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->o(Landroid/view/View;)Landroid/support/v4/view/dc;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/support/v4/view/dc;->b(F)Landroid/support/v4/view/dc;

    .line 8276
    :cond_0
    if-eqz v4, :cond_1

    .line 8277
    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->o(Landroid/view/View;)Landroid/support/v4/view/dc;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/support/v4/view/dc;->c(F)Landroid/support/v4/view/dc;

    .line 8282
    :cond_1
    iget-object v0, v1, Landroid/support/v7/widget/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8283
    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->o(Landroid/view/View;)Landroid/support/v4/view/dc;

    move-result-object v5

    .line 8913
    iget-wide v8, v1, Landroid/support/v7/widget/v;->k:J

    .line 8284
    invoke-virtual {v5, v8, v9}, Landroid/support/v4/view/dc;->a(J)Landroid/support/v4/view/dc;

    move-result-object v7

    new-instance v0, Landroid/support/v7/widget/g$6;

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/g$6;-><init>(Landroid/support/v7/widget/g;Landroid/support/v7/widget/ao;IILandroid/support/v4/view/dc;)V

    invoke-virtual {v7, v0}, Landroid/support/v4/view/dc;->a(Landroid/support/v4/view/do;)Landroid/support/v4/view/dc;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/dc;->b()V

    goto :goto_0

    .line 123
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/g$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 124
    iget-object v0, p0, Landroid/support/v7/widget/g$1;->b:Landroid/support/v7/widget/g;

    .line 9034
    iget-object v0, v0, Landroid/support/v7/widget/g;->b:Ljava/util/ArrayList;

    .line 124
    iget-object v1, p0, Landroid/support/v7/widget/g$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method
