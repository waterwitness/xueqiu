.class final Lcom/sleepycat/b/e$1;
.super Ljava/lang/Object;
.source "Cursor.java"

# interfaces
.implements Lcom/sleepycat/b/c/au;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/e;[B)V
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/sleepycat/b/e;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/e;[B)V
    .locals 0

    .prologue
    .line 3942
    iput-object p1, p0, Lcom/sleepycat/b/e$1;->b:Lcom/sleepycat/b/e;

    iput-object p2, p0, Lcom/sleepycat/b/e$1;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B)Z
    .locals 2

    .prologue
    .line 3944
    iget-object v0, p0, Lcom/sleepycat/b/e$1;->a:[B

    iget-object v1, p0, Lcom/sleepycat/b/e$1;->b:Lcom/sleepycat/b/e;

    invoke-static {v1}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/e;)Lcom/sleepycat/b/c/i;

    move-result-object v1

    .line 4051
    iget-object v1, v1, Lcom/sleepycat/b/c/i;->n:Ljava/util/Comparator;

    .line 3944
    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/c/y;->a([B[BLjava/util/Comparator;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
