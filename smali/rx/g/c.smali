.class public final Lrx/g/c;
.super Lrx/g/b;
.source "RxJavaObservableExecutionHookDefault.java"


# static fields
.field private static a:Lrx/g/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lrx/g/c;

    invoke-direct {v0}, Lrx/g/c;-><init>()V

    sput-object v0, Lrx/g/c;->a:Lrx/g/c;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lrx/g/b;-><init>()V

    return-void
.end method

.method public static a()Lrx/g/b;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lrx/g/c;->a:Lrx/g/c;

    return-object v0
.end method
