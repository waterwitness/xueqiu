.class final Lcom/c/a/h;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Lcom/c/a/b;


# instance fields
.field private a:Lcom/c/a/d;

.field private b:Lcom/c/a/i;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/c/a/d;Lcom/c/a/i;I)V
    .locals 0

    .prologue
    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    iput-object p1, p0, Lcom/c/a/h;->a:Lcom/c/a/d;

    .line 637
    iput-object p2, p0, Lcom/c/a/h;->b:Lcom/c/a/i;

    .line 638
    iput p3, p0, Lcom/c/a/h;->c:I

    .line 639
    return-void
.end method

.method private c(Lcom/c/a/a;)V
    .locals 6

    .prologue
    .line 680
    iget-object v0, p0, Lcom/c/a/h;->a:Lcom/c/a/d;

    iget-boolean v0, v0, Lcom/c/a/d;->b:Z

    if-eqz v0, :cond_1

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 684
    :cond_1
    const/4 v1, 0x0

    .line 685
    iget-object v0, p0, Lcom/c/a/h;->b:Lcom/c/a/i;

    iget-object v0, v0, Lcom/c/a/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 686
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_3

    .line 687
    iget-object v0, p0, Lcom/c/a/h;->b:Lcom/c/a/i;

    iget-object v0, v0, Lcom/c/a/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/g;

    .line 688
    iget v4, v0, Lcom/c/a/g;->b:I

    iget v5, p0, Lcom/c/a/h;->c:I

    if-ne v4, v5, :cond_2

    iget-object v4, v0, Lcom/c/a/g;->a:Lcom/c/a/i;

    iget-object v4, v4, Lcom/c/a/i;->a:Lcom/c/a/a;

    if-ne v4, p1, :cond_2

    .line 693
    invoke-virtual {p1, p0}, Lcom/c/a/a;->b(Lcom/c/a/b;)V

    .line 697
    :goto_2
    iget-object v1, p0, Lcom/c/a/h;->b:Lcom/c/a/i;

    iget-object v1, v1, Lcom/c/a/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 698
    iget-object v0, p0, Lcom/c/a/h;->b:Lcom/c/a/i;

    iget-object v0, v0, Lcom/c/a/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/c/a/h;->b:Lcom/c/a/i;

    iget-object v0, v0, Lcom/c/a/i;->a:Lcom/c/a/a;

    invoke-virtual {v0}, Lcom/c/a/a;->a()V

    .line 701
    iget-object v0, p0, Lcom/c/a/h;->a:Lcom/c/a/d;

    invoke-static {v0}, Lcom/c/a/d;->a(Lcom/c/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/c/a/h;->b:Lcom/c/a/i;

    iget-object v1, v1, Lcom/c/a/i;->a:Lcom/c/a/a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 686
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/c/a/a;)V
    .locals 2

    .prologue
    .line 653
    iget v0, p0, Lcom/c/a/h;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 654
    invoke-direct {p0, p1}, Lcom/c/a/h;->c(Lcom/c/a/a;)V

    .line 656
    :cond_0
    return-void
.end method

.method public final b(Lcom/c/a/a;)V
    .locals 1

    .prologue
    .line 668
    iget v0, p0, Lcom/c/a/h;->c:I

    if-nez v0, :cond_0

    .line 669
    invoke-direct {p0, p1}, Lcom/c/a/h;->c(Lcom/c/a/a;)V

    .line 671
    :cond_0
    return-void
.end method
