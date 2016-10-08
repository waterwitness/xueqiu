.class final Lcom/sleepycat/b/e$2;
.super Ljava/lang/Object;
.source "Cursor.java"

# interfaces
.implements Lcom/sleepycat/b/c/au;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/e;Lcom/sleepycat/b/m;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sleepycat/b/m;

.field final synthetic b:Lcom/sleepycat/b/e;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/e;Lcom/sleepycat/b/m;)V
    .locals 0

    .prologue
    .line 3952
    iput-object p1, p0, Lcom/sleepycat/b/e$2;->b:Lcom/sleepycat/b/e;

    iput-object p2, p0, Lcom/sleepycat/b/e$2;->a:Lcom/sleepycat/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B)Z
    .locals 4

    .prologue
    .line 3954
    iget-object v0, p0, Lcom/sleepycat/b/e$2;->a:Lcom/sleepycat/b/m;

    .line 4197
    iget-object v0, v0, Lcom/sleepycat/b/m;->a:[B

    .line 3954
    iget-object v1, p0, Lcom/sleepycat/b/e$2;->a:Lcom/sleepycat/b/m;

    .line 4382
    iget v1, v1, Lcom/sleepycat/b/m;->d:I

    .line 3954
    iget-object v2, p0, Lcom/sleepycat/b/e$2;->a:Lcom/sleepycat/b/m;

    .line 4410
    iget v2, v2, Lcom/sleepycat/b/m;->e:I

    .line 3954
    iget-object v3, p0, Lcom/sleepycat/b/e$2;->b:Lcom/sleepycat/b/e;

    invoke-static {v3}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/e;)Lcom/sleepycat/b/c/i;

    move-result-object v3

    .line 5051
    iget-object v3, v3, Lcom/sleepycat/b/c/i;->n:Ljava/util/Comparator;

    .line 3954
    invoke-static {p1, v0, v1, v2, v3}, Lcom/sleepycat/b/c/y;->a([B[BIILjava/util/Comparator;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
