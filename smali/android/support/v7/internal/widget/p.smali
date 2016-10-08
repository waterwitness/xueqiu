.class final Landroid/support/v7/internal/widget/p;
.super Landroid/database/DataSetObserver;
.source "AdapterViewICS.java"


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/o;

.field private b:Landroid/os/Parcelable;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/o;)V
    .locals 1

    .prologue
    .line 796
    iput-object p1, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/o;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 798
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/widget/p;->b:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 802
    iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/o;

    iput-boolean v5, v0, Landroid/support/v7/internal/widget/o;->v:Z

    .line 803
    iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/o;

    iget-object v1, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/o;

    iget v1, v1, Landroid/support/v7/internal/widget/o;->A:I

    iput v1, v0, Landroid/support/v7/internal/widget/o;->B:I

    .line 804
    iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/o;

    iget-object v1, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/o;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/o;->c()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Landroid/support/v7/internal/widget/o;->A:I

    .line 808
    iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/o;->c()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/p;->b:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/o;

    iget v0, v0, Landroid/support/v7/internal/widget/o;->B:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/o;

    iget v0, v0, Landroid/support/v7/internal/widget/o;->A:I

    if-lez v0, :cond_1

    .line 810
    iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/o;

    iget-object v1, p0, Landroid/support/v7/internal/widget/p;->b:Landroid/os/Parcelable;

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/o;->a(Landroid/support/v7/internal/widget/o;Landroid/os/Parcelable;)V

    .line 811
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/widget/p;->b:Landroid/os/Parcelable;

    .line 815
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/o;->d()V

    .line 816
    iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/o;->requestLayout()V

    .line 817
    return-void

    .line 813
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/o;

    .line 2119
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/o;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 2120
    iput-boolean v5, v0, Landroid/support/v7/internal/widget/o;->p:Z

    .line 2121
    iget v1, v0, Landroid/support/v7/internal/widget/o;->r:I

    int-to-long v2, v1

    iput-wide v2, v0, Landroid/support/v7/internal/widget/o;->o:J

    .line 2122
    iget v1, v0, Landroid/support/v7/internal/widget/o;->y:I

    if-ltz v1, :cond_3

    .line 2124
    iget v1, v0, Landroid/support/v7/internal/widget/o;->y:I

    iget v2, v0, Landroid/support/v7/internal/widget/o;->k:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/o;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2125
    iget-wide v2, v0, Landroid/support/v7/internal/widget/o;->x:J

    iput-wide v2, v0, Landroid/support/v7/internal/widget/o;->n:J

    .line 2126
    iget v2, v0, Landroid/support/v7/internal/widget/o;->w:I

    iput v2, v0, Landroid/support/v7/internal/widget/o;->m:I

    .line 2127
    if-eqz v1, :cond_2

    .line 2128
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, v0, Landroid/support/v7/internal/widget/o;->l:I

    .line 2130
    :cond_2
    iput v4, v0, Landroid/support/v7/internal/widget/o;->q:I

    goto :goto_0

    .line 2133
    :cond_3
    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/o;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2134
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/o;->c()Landroid/widget/Adapter;

    move-result-object v2

    .line 2135
    iget v3, v0, Landroid/support/v7/internal/widget/o;->k:I

    if-ltz v3, :cond_5

    iget v3, v0, Landroid/support/v7/internal/widget/o;->k:I

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 2136
    iget v3, v0, Landroid/support/v7/internal/widget/o;->k:I

    invoke-interface {v2, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v7/internal/widget/o;->n:J

    .line 2140
    :goto_1
    iget v2, v0, Landroid/support/v7/internal/widget/o;->k:I

    iput v2, v0, Landroid/support/v7/internal/widget/o;->m:I

    .line 2141
    if-eqz v1, :cond_4

    .line 2142
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, v0, Landroid/support/v7/internal/widget/o;->l:I

    .line 2144
    :cond_4
    iput v5, v0, Landroid/support/v7/internal/widget/o;->q:I

    goto :goto_0

    .line 2138
    :cond_5
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Landroid/support/v7/internal/widget/o;->n:J

    goto :goto_1
.end method

.method public final onInvalidated()V
    .locals 6

    .prologue
    const-wide/high16 v4, -0x8000000000000000L

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 821
    iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/o;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/internal/widget/o;->v:Z

    .line 823
    iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/o;->c()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/o;

    invoke-static {v0}, Landroid/support/v7/internal/widget/o;->a(Landroid/support/v7/internal/widget/o;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/p;->b:Landroid/os/Parcelable;

    .line 830
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/o;

    iget-object v1, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/o;

    iget v1, v1, Landroid/support/v7/internal/widget/o;->A:I

    iput v1, v0, Landroid/support/v7/internal/widget/o;->B:I

    .line 831
    iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/o;

    iput v3, v0, Landroid/support/v7/internal/widget/o;->A:I

    .line 832
    iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/o;

    iput v2, v0, Landroid/support/v7/internal/widget/o;->y:I

    .line 833
    iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/o;

    iput-wide v4, v0, Landroid/support/v7/internal/widget/o;->z:J

    .line 834
    iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/o;

    iput v2, v0, Landroid/support/v7/internal/widget/o;->w:I

    .line 835
    iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/o;

    iput-wide v4, v0, Landroid/support/v7/internal/widget/o;->x:J

    .line 836
    iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/o;

    iput-boolean v3, v0, Landroid/support/v7/internal/widget/o;->p:Z

    .line 838
    iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/o;->d()V

    .line 839
    iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/o;->requestLayout()V

    .line 840
    return-void
.end method
