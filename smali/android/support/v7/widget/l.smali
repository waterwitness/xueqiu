.class final Landroid/support/v7/widget/l;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# instance fields
.field a:I

.field b:I

.field c:Z

.field final synthetic d:Landroid/support/v7/widget/k;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/k;)V
    .locals 0

    .prologue
    .line 1920
    iput-object p1, p0, Landroid/support/v7/widget/l;->d:Landroid/support/v7/widget/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 1935
    iget-boolean v0, p0, Landroid/support/v7/widget/l;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/l;->d:Landroid/support/v7/widget/k;

    iget-object v0, v0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->c()I

    move-result v0

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/l;->b:I

    .line 1938
    return-void

    .line 1935
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/l;->d:Landroid/support/v7/widget/k;

    iget-object v0, v0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->b()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1964
    iget-boolean v0, p0, Landroid/support/v7/widget/l;->c:Z

    if-eqz v0, :cond_0

    .line 1965
    iget-object v0, p0, Landroid/support/v7/widget/l;->d:Landroid/support/v7/widget/k;

    iget-object v0, v0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/l;->d:Landroid/support/v7/widget/k;

    iget-object v1, v1, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v1}, Landroid/support/v7/widget/r;->a()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/l;->b:I

    .line 1971
    :goto_0
    invoke-static {p1}, Landroid/support/v7/widget/k;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/l;->a:I

    .line 1972
    return-void

    .line 1968
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/l;->d:Landroid/support/v7/widget/k;

    iget-object v0, v0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/l;->b:I

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1942
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnchorInfo{mPosition="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/support/v7/widget/l;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/l;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/l;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
