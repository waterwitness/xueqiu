.class public final Lcom/imbryk/viewPager/a;
.super Landroid/support/v4/view/bd;
.source "LoopPagerAdapterWrapper.java"


# instance fields
.field b:Landroid/support/v4/view/bd;

.field c:Z

.field private d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/imbryk/viewPager/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/view/bd;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v4/view/bd;-><init>()V

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/imbryk/viewPager/a;->d:Landroid/util/SparseArray;

    .line 46
    iput-object p1, p0, Lcom/imbryk/viewPager/a;->b:Landroid/support/v4/view/bd;

    .line 47
    return-void
.end method


# virtual methods
.method final a(I)I
    .locals 2

    .prologue
    .line 56
    .line 1085
    iget-object v0, p0, Lcom/imbryk/viewPager/a;->b:Landroid/support/v4/view/bd;

    invoke-virtual {v0}, Landroid/support/v4/view/bd;->b()I

    move-result v1

    .line 57
    if-nez v1, :cond_1

    .line 58
    const/4 v0, 0x0

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    add-int/lit8 v0, p1, -0x1

    rem-int/2addr v0, v1

    .line 60
    if-gez v0, :cond_0

    .line 61
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public final a()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/imbryk/viewPager/a;->b:Landroid/support/v4/view/bd;

    invoke-virtual {v0}, Landroid/support/v4/view/bd;->a()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/imbryk/viewPager/a;->b:Landroid/support/v4/view/bd;

    instance-of v0, v0, Landroid/support/v4/a/v;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/imbryk/viewPager/a;->b:Landroid/support/v4/view/bd;

    instance-of v0, v0, Landroid/support/v4/a/x;

    if-eqz v0, :cond_1

    :cond_0
    move v1, p2

    .line 98
    :goto_0
    iget-boolean v0, p0, Lcom/imbryk/viewPager/a;->c:Z

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/imbryk/viewPager/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/imbryk/viewPager/b;

    .line 100
    if-eqz v0, :cond_2

    .line 101
    iget-object v1, p0, Lcom/imbryk/viewPager/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 102
    iget-object v0, v0, Lcom/imbryk/viewPager/b;->c:Ljava/lang/Object;

    .line 105
    :goto_1
    return-object v0

    .line 96
    :cond_1
    invoke-virtual {p0, p2}, Lcom/imbryk/viewPager/a;->a(I)I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/imbryk/viewPager/a;->b:Landroid/support/v4/view/bd;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/bd;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/imbryk/viewPager/a;->b:Landroid/support/v4/view/bd;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/bd;->a(Landroid/view/ViewGroup;)V

    .line 131
    return-void
.end method

.method public final a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 111
    .line 2085
    iget-object v0, p0, Lcom/imbryk/viewPager/a;->b:Landroid/support/v4/view/bd;

    invoke-virtual {v0}, Landroid/support/v4/view/bd;->b()I

    move-result v0

    .line 2076
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, -0x1

    .line 112
    iget-object v0, p0, Lcom/imbryk/viewPager/a;->b:Landroid/support/v4/view/bd;

    instance-of v0, v0, Landroid/support/v4/a/v;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/imbryk/viewPager/a;->b:Landroid/support/v4/view/bd;

    instance-of v0, v0, Landroid/support/v4/a/x;

    if-eqz v0, :cond_2

    :cond_0
    move v0, p2

    .line 116
    :goto_0
    iget-boolean v2, p0, Lcom/imbryk/viewPager/a;->c:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    if-ne p2, v1, :cond_3

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/imbryk/viewPager/a;->d:Landroid/util/SparseArray;

    new-instance v2, Lcom/imbryk/viewPager/b;

    invoke-direct {v2, p1, v0, p3}, Lcom/imbryk/viewPager/b;-><init>(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    :goto_1
    return-void

    .line 114
    :cond_2
    invoke-virtual {p0, p2}, Lcom/imbryk/viewPager/a;->a(I)I

    move-result v0

    goto :goto_0

    .line 120
    :cond_3
    iget-object v1, p0, Lcom/imbryk/viewPager/a;->b:Landroid/support/v4/view/bd;

    invoke-virtual {v1, p1, v0, p3}, Landroid/support/v4/view/bd;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/imbryk/viewPager/a;->b:Landroid/support/v4/view/bd;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/bd;->a(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/imbryk/viewPager/a;->b:Landroid/support/v4/view/bd;

    invoke-virtual {v0}, Landroid/support/v4/view/bd;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final b(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/imbryk/viewPager/a;->b:Landroid/support/v4/view/bd;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/bd;->b(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 156
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/imbryk/viewPager/a;->d:Landroid/util/SparseArray;

    .line 52
    invoke-super {p0}, Landroid/support/v4/view/bd;->d()V

    .line 53
    return-void
.end method
