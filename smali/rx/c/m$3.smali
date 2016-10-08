.class public final Lrx/c/m$3;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lrx/c/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/m;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/l",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/k;


# direct methods
.method public constructor <init>(Lrx/c/k;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lrx/c/m$3;->a:Lrx/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 167
    array-length v0, p1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 168
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Func6 expecting 6 arguments."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    iget-object v0, p0, Lrx/c/m$3;->a:Lrx/c/k;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    const/4 v4, 0x3

    aget-object v4, p1, v4

    const/4 v5, 0x4

    aget-object v5, p1, v5

    const/4 v6, 0x5

    aget-object v6, p1, v6

    invoke-interface/range {v0 .. v6}, Lrx/c/k;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
