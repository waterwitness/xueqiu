.class final Landroid/support/v7/widget/ah;
.super Landroid/support/v7/widget/u;
.source "RecyclerView.java"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 2979
    iput-object p1, p0, Landroid/support/v7/widget/ah;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/u;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView;B)V
    .locals 0

    .prologue
    .line 2979
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ah;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2982
    iget-object v0, p0, Landroid/support/v7/widget/ah;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 2983
    iget-object v0, p0, Landroid/support/v7/widget/ah;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/s;

    move-result-object v0

    .line 8202
    iget-boolean v0, v0, Landroid/support/v7/widget/s;->b:Z

    .line 2983
    if-eqz v0, :cond_1

    .line 2987
    iget-object v0, p0, Landroid/support/v7/widget/ah;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/al;

    .line 8586
    iput-boolean v2, v0, Landroid/support/v7/widget/al;->h:Z

    .line 2988
    iget-object v0, p0, Landroid/support/v7/widget/ah;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->m(Landroid/support/v7/widget/RecyclerView;)Z

    .line 2993
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/ah;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/a;

    invoke-virtual {v0}, Landroid/support/v7/widget/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2994
    iget-object v0, p0, Landroid/support/v7/widget/ah;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 2996
    :cond_0
    return-void

    .line 2990
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ah;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/al;

    .line 9586
    iput-boolean v2, v0, Landroid/support/v7/widget/al;->h:Z

    .line 2991
    iget-object v0, p0, Landroid/support/v7/widget/ah;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->m(Landroid/support/v7/widget/RecyclerView;)Z

    goto :goto_0
.end method
