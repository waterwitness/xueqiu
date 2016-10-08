.class public final Lcom/pingan/b/a/a;
.super Lcom/loopj/android/http/AsyncHttpClient;
.source "AsyncHttpClientMod.java"


# static fields
.field static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/pingan/b/a/a;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 17
    return-void
.end method

.method public static a()Lcom/pingan/b/a/a;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/pingan/b/a/a;

    invoke-direct {v0}, Lcom/pingan/b/a/a;-><init>()V

    .line 23
    return-object v0
.end method
