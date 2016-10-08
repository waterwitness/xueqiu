.class final Lcom/sleepycat/b/i/g/a/c;
.super Ljava/lang/Object;
.source "LDiff.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/sleepycat/b/i/g/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/sleepycat/b/i/g/a/b;

.field private b:Lcom/sleepycat/b/i/g/a/a;

.field private c:Lcom/sleepycat/b/e;

.field private final d:Lcom/sleepycat/b/i;

.field private e:Lcom/sleepycat/b/m;

.field private f:Lcom/sleepycat/b/m;

.field private g:Z

.field private h:I

.field private final i:I


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/g/a/b;Lcom/sleepycat/b/i;)V
    .locals 1

    .prologue
    .line 754
    iput-object p1, p0, Lcom/sleepycat/b/i/g/a/c;->a:Lcom/sleepycat/b/i/g/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/b/i/g/a/c;->h:I

    .line 756
    invoke-static {p1}, Lcom/sleepycat/b/i/g/a/b;->a(Lcom/sleepycat/b/i/g/a/b;)Lcom/sleepycat/b/i/g/a/d;

    move-result-object v0

    .line 1093
    iget v0, v0, Lcom/sleepycat/b/i/g/a/d;->a:I

    .line 756
    iput v0, p0, Lcom/sleepycat/b/i/g/a/c;->i:I

    .line 757
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/g/a/c;->b:Lcom/sleepycat/b/i/g/a/a;

    .line 758
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/i/g/a/c;->g:Z

    .line 759
    iput-object p2, p0, Lcom/sleepycat/b/i/g/a/c;->d:Lcom/sleepycat/b/i;

    .line 762
    invoke-direct {p0}, Lcom/sleepycat/b/i/g/a/c;->a()Lcom/sleepycat/b/i/g/a/a;

    .line 763
    return-void
.end method

.method private a()Lcom/sleepycat/b/i/g/a/a;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 774
    iget-boolean v0, p0, Lcom/sleepycat/b/i/g/a/c;->g:Z

    if-nez v0, :cond_0

    .line 775
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/c;->d:Lcom/sleepycat/b/i;

    invoke-virtual {v0, v3, v3}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/g;)Lcom/sleepycat/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/g/a/c;->c:Lcom/sleepycat/b/e;

    .line 788
    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/c;->e:Lcom/sleepycat/b/m;

    if-nez v0, :cond_1

    .line 789
    new-instance v0, Lcom/sleepycat/b/m;

    invoke-direct {v0}, Lcom/sleepycat/b/m;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/g/a/c;->e:Lcom/sleepycat/b/m;

    .line 790
    new-instance v0, Lcom/sleepycat/b/m;

    invoke-direct {v0}, Lcom/sleepycat/b/m;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/g/a/c;->f:Lcom/sleepycat/b/m;

    .line 794
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/c;->b:Lcom/sleepycat/b/i/g/a/a;

    .line 795
    iget v1, p0, Lcom/sleepycat/b/i/g/a/c;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sleepycat/b/i/g/a/c;->h:I

    iget-object v2, p0, Lcom/sleepycat/b/i/g/a/c;->c:Lcom/sleepycat/b/e;

    iget v3, p0, Lcom/sleepycat/b/i/g/a/c;->i:I

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/i/g/a/h;->a(ILcom/sleepycat/b/e;I)Lcom/sleepycat/b/i/g/a/a;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/b/i/g/a/c;->b:Lcom/sleepycat/b/i/g/a/a;

    .line 796
    iget-object v1, p0, Lcom/sleepycat/b/i/g/a/c;->b:Lcom/sleepycat/b/i/g/a/a;

    iget v1, v1, Lcom/sleepycat/b/i/g/a/a;->b:I

    if-nez v1, :cond_2

    .line 797
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sleepycat/b/i/g/a/c;->g:Z

    .line 801
    :goto_1
    iget-object v1, p0, Lcom/sleepycat/b/i/g/a/c;->c:Lcom/sleepycat/b/e;

    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V

    .line 802
    return-object v0

    .line 792
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/c;->c:Lcom/sleepycat/b/e;

    iget-object v1, p0, Lcom/sleepycat/b/i/g/a/c;->e:Lcom/sleepycat/b/m;

    iget-object v2, p0, Lcom/sleepycat/b/i/g/a/c;->f:Lcom/sleepycat/b/m;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sleepycat/b/e;->g(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    goto :goto_0

    .line 799
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/b/i/g/a/c;->c:Lcom/sleepycat/b/e;

    iget-object v2, p0, Lcom/sleepycat/b/i/g/a/c;->e:Lcom/sleepycat/b/m;

    iget-object v3, p0, Lcom/sleepycat/b/i/g/a/c;->f:Lcom/sleepycat/b/m;

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/b/e;->b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;

    goto :goto_1
.end method


# virtual methods
.method protected final finalize()V
    .locals 1

    .prologue
    .line 808
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/c;->c:Lcom/sleepycat/b/e;

    invoke-virtual {v0}, Lcom/sleepycat/b/e;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 811
    return-void

    .line 810
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 1

    .prologue
    .line 766
    iget-boolean v0, p0, Lcom/sleepycat/b/i/g/a/c;->g:Z

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 745
    invoke-direct {p0}, Lcom/sleepycat/b/i/g/a/c;->a()Lcom/sleepycat/b/i/g/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 0

    .prologue
    .line 771
    return-void
.end method
