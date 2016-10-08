.class public abstract Landroid/support/v7/widget/aj;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# instance fields
.field a:I

.field b:Z

.field c:Z

.field d:Landroid/view/View;

.field private e:Landroid/support/v7/widget/RecyclerView;

.field private f:Landroid/support/v7/widget/aa;

.field private final g:Landroid/support/v7/widget/ak;


# direct methods
.method static synthetic a(Landroid/support/v7/widget/aj;)V
    .locals 2

    .prologue
    .line 7121
    .line 9231
    iget-boolean v0, p0, Landroid/support/v7/widget/aj;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/aj;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 9232
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/aj;->a()V

    .line 9234
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/aj;->b:Z

    .line 9235
    iget-object v0, p0, Landroid/support/v7/widget/aj;->d:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 9237
    iget-object v0, p0, Landroid/support/v7/widget/aj;->d:Landroid/view/View;

    .line 9256
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)I

    move-result v0

    .line 9237
    iget v1, p0, Landroid/support/v7/widget/aj;->a:I

    if-ne v0, v1, :cond_4

    .line 9238
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/al;

    .line 9239
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/support/v7/widget/ak;

    iget-object v1, p0, Landroid/support/v7/widget/aj;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Landroid/support/v7/widget/ak;->a(Landroid/support/v7/widget/ak;Landroid/support/v7/widget/RecyclerView;)V

    .line 9240
    invoke-virtual {p0}, Landroid/support/v7/widget/aj;->a()V

    .line 9246
    :cond_2
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/aj;->c:Z

    if-eqz v0, :cond_3

    .line 9247
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/al;

    .line 9248
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/support/v7/widget/ak;

    iget-object v1, p0, Landroid/support/v7/widget/aj;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Landroid/support/v7/widget/ak;->a(Landroid/support/v7/widget/ak;Landroid/support/v7/widget/RecyclerView;)V

    .line 7121
    :cond_3
    return-void

    .line 9242
    :cond_4
    const-string v0, "RecyclerView"

    const-string v1, "Passed over target position while smooth scrolling."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9243
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/aj;->d:Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 7185
    iget-boolean v0, p0, Landroid/support/v7/widget/aj;->c:Z

    if-nez v0, :cond_0

    .line 7199
    :goto_0
    return-void

    .line 7189
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/al;

    .line 8586
    iput v2, v0, Landroid/support/v7/widget/al;->a:I

    .line 7190
    iput-object v1, p0, Landroid/support/v7/widget/aj;->d:Landroid/view/View;

    .line 7191
    iput v2, p0, Landroid/support/v7/widget/aj;->a:I

    .line 7192
    iput-boolean v3, p0, Landroid/support/v7/widget/aj;->b:Z

    .line 7193
    iput-boolean v3, p0, Landroid/support/v7/widget/aj;->c:Z

    .line 7195
    iget-object v0, p0, Landroid/support/v7/widget/aj;->f:Landroid/support/v7/widget/aa;

    invoke-static {v0, p0}, Landroid/support/v7/widget/aa;->a(Landroid/support/v7/widget/aa;Landroid/support/v7/widget/aj;)V

    .line 7197
    iput-object v1, p0, Landroid/support/v7/widget/aj;->f:Landroid/support/v7/widget/aa;

    .line 7198
    iput-object v1, p0, Landroid/support/v7/widget/aj;->e:Landroid/support/v7/widget/RecyclerView;

    goto :goto_0
.end method
