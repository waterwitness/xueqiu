.class final Lcom/sleepycat/b/x$1;
.super Lcom/sleepycat/b/y;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/b/x;->a(Lcom/sleepycat/b/bp;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/b/y",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/sleepycat/b/x;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/x;Lcom/sleepycat/b/bp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 937
    iput-object p1, p0, Lcom/sleepycat/b/x$1;->b:Lcom/sleepycat/b/x;

    iput-object p4, p0, Lcom/sleepycat/b/x$1;->a:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/b/y;-><init>(Lcom/sleepycat/b/x;Lcom/sleepycat/b/bp;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/sleepycat/b/n/q;)Lcom/sleepycat/b/p/ab;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/n/q;",
            ")",
            "Lcom/sleepycat/b/p/ab",
            "<",
            "Lcom/sleepycat/b/c/i;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 943
    iget-object v0, p0, Lcom/sleepycat/b/x$1;->c:Lcom/sleepycat/b/c/p;

    iget-object v1, p0, Lcom/sleepycat/b/x$1;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;

    move-result-object v0

    .line 946
    new-instance v1, Lcom/sleepycat/b/p/ab;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/b/p/ab;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method final a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/i;)V
    .locals 0

    .prologue
    .line 950
    invoke-static {p1, p2}, Lcom/sleepycat/b/c/bh;->b(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/i;)V

    .line 951
    return-void
.end method
