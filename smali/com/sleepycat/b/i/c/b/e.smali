.class final Lcom/sleepycat/b/i/c/b/e;
.super Ljava/lang/Object;
.source "DbCache.java"


# instance fields
.field a:I

.field final b:Lcom/sleepycat/b/c/i;

.field final synthetic c:Lcom/sleepycat/b/i/c/b/c;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/c/b/c;Lcom/sleepycat/b/c/i;)V
    .locals 1

    .prologue
    .line 190
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/e;->c:Lcom/sleepycat/b/i/c/b/c;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    invoke-static {p1}, Lcom/sleepycat/b/i/c/b/c;->a(Lcom/sleepycat/b/i/c/b/c;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/i/c/b/e;->a:I

    .line 193
    iput-object p2, p0, Lcom/sleepycat/b/i/c/b/e;->b:Lcom/sleepycat/b/c/i;

    .line 194
    return-void
.end method
