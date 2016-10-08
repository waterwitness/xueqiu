.class public final Lcom/sleepycat/b/a/c$1;
.super Ljava/lang/Object;
.source "Cleaner.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/sleepycat/b/l/a;

.field final synthetic b:Lcom/sleepycat/b/a/c;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/a/c;Lcom/sleepycat/b/l/a;)V
    .locals 0

    .prologue
    .line 1343
    iput-object p1, p0, Lcom/sleepycat/b/a/c$1;->b:Lcom/sleepycat/b/a/c;

    iput-object p2, p0, Lcom/sleepycat/b/a/c$1;->a:Lcom/sleepycat/b/l/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 1343
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    .line 2345
    iget-object v0, p0, Lcom/sleepycat/b/a/c$1;->a:Lcom/sleepycat/b/l/a;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/a;->k(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/sleepycat/b/a/c$1;->a:Lcom/sleepycat/b/l/a;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/l/a;->k(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v0

    .line 1343
    return v0
.end method
