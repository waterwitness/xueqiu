.class final Lorg/apache/commons/a/a/b/a;
.super Ljava/lang/Object;
.source "FallbackZipEncoding.java"

# interfaces
.implements Lorg/apache/commons/a/a/b/b;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/a/a/b/a;->a:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/commons/a/a/b/a;->a:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public final a([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/commons/a/a/b/a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 92
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/a/a/b/a;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method
