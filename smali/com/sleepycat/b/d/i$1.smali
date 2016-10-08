.class final Lcom/sleepycat/b/d/i$1;
.super Ljava/lang/Object;
.source "PrivateEvictor.java"

# interfaces
.implements Lcom/sleepycat/b/d/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/b/d/i;->d()Lcom/sleepycat/b/d/d;
.end annotation


# static fields
.field static final synthetic c:Z


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sleepycat/b/c/h;",
            "Lcom/sleepycat/b/c/i;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field final synthetic d:Lcom/sleepycat/b/d/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/sleepycat/b/d/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/d/i$1;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sleepycat/b/d/i;)V
    .locals 1

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sleepycat/b/d/i$1;->d:Lcom/sleepycat/b/d/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/d/i$1;->a:Ljava/util/Map;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/b/d/i$1;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;
    .locals 4

    .prologue
    .line 49
    sget-boolean v0, Lcom/sleepycat/b/d/i$1;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/d/i$1;->d:Lcom/sleepycat/b/d/i;

    iget-object v0, v0, Lcom/sleepycat/b/d/i;->a:Lcom/sleepycat/b/c/ad;

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 56
    :cond_0
    iget v0, p0, Lcom/sleepycat/b/d/i$1;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/b/d/i$1;->b:I

    .line 57
    iget v0, p0, Lcom/sleepycat/b/d/i$1;->b:I

    iget-object v1, p0, Lcom/sleepycat/b/d/i$1;->d:Lcom/sleepycat/b/d/i;

    iget v1, v1, Lcom/sleepycat/b/d/i;->e:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/sleepycat/b/d/i$1;->a()V

    .line 3379
    :cond_1
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 61
    const-wide/16 v2, -0x1

    iget-object v1, p0, Lcom/sleepycat/b/d/i$1;->a:Ljava/util/Map;

    invoke-virtual {v0, p2, v2, v3, v1}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/c/h;JLjava/util/Map;)Lcom/sleepycat/b/c/i;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sleepycat/b/d/i$1;->d:Lcom/sleepycat/b/d/i;

    iget-object v0, v0, Lcom/sleepycat/b/d/i;->a:Lcom/sleepycat/b/c/ad;

    .line 4379
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 65
    iget-object v1, p0, Lcom/sleepycat/b/d/i$1;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/p;->a(Ljava/util/Map;)V

    .line 66
    iget-object v0, p0, Lcom/sleepycat/b/d/i$1;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 67
    return-void
.end method
