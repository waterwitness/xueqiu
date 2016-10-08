.class public final Lrx/d/c/l;
.super Ljava/lang/Object;
.source "UtilityFunctions.java"


# static fields
.field private static final a:Lrx/d/c/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lrx/d/c/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/d/c/m;-><init>(B)V

    sput-object v0, Lrx/d/c/l;->a:Lrx/d/c/m;

    return-void
.end method

.method public static a()Lrx/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/c/f",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lrx/d/c/l$1;

    invoke-direct {v0}, Lrx/d/c/l$1;-><init>()V

    return-object v0
.end method
