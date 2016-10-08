.class final Lcom/sleepycat/b/d/c;
.super Ljava/lang/Object;
.source "Evictor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/sleepycat/b/d/b;

.field private final b:Z


# direct methods
.method constructor <init>(Lcom/sleepycat/b/d/b;)V
    .locals 1

    .prologue
    .line 1231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1232
    iput-object p1, p0, Lcom/sleepycat/b/d/c;->a:Lcom/sleepycat/b/d/b;

    .line 1233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/d/c;->b:Z

    .line 1234
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/sleepycat/b/d/c;->a:Lcom/sleepycat/b/d/b;

    sget-object v1, Lcom/sleepycat/b/d/e;->a:Lcom/sleepycat/b/d/e;

    iget-boolean v2, p0, Lcom/sleepycat/b/d/c;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/b/d/b;->a(Lcom/sleepycat/b/d/e;Z)V

    .line 1238
    return-void
.end method
