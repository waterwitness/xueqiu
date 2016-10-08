.class public final Lrx/c/c;
.super Ljava/lang/Object;
.source "Actions.java"


# static fields
.field private static final a:Lrx/c/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lrx/c/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/c/d;-><init>(B)V

    sput-object v0, Lrx/c/c;->a:Lrx/c/d;

    return-void
.end method

.method public static final a()Lrx/c/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/c/d",
            "<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
        }
    .end annotation

    .prologue
    .line 30
    sget-object v0, Lrx/c/c;->a:Lrx/c/d;

    return-object v0
.end method
