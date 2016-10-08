.class public final Lrx/j/g;
.super Ljava/lang/Object;
.source "Subscriptions.java"


# static fields
.field private static final a:Lrx/j/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 125
    new-instance v0, Lrx/j/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/j/i;-><init>(B)V

    sput-object v0, Lrx/j/g;->a:Lrx/j/i;

    return-void
.end method

.method public static a()Lrx/j;
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lrx/j/a;->a()Lrx/j/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Future;)Lrx/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)",
            "Lrx/j;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lrx/j/h;

    invoke-direct {v0, p0}, Lrx/j/h;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public static a(Lrx/c/a;)Lrx/j;
    .locals 1

    .prologue
    .line 77
    invoke-static {p0}, Lrx/j/a;->a(Lrx/c/a;)Lrx/j/a;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lrx/j;
    .locals 1
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 66
    sget-object v0, Lrx/j/g;->a:Lrx/j/i;

    return-object v0
.end method
