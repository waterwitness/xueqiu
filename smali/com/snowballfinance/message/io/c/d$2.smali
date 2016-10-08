.class final Lcom/snowballfinance/message/io/c/d$2;
.super Ljava/lang/Object;
.source "FragmentChannel.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snowballfinance/message/io/c/d;->b(Ljava/lang/String;)Lcom/snowballfinance/message/io/c/d;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/snowballfinance/message/io/c/d;


# direct methods
.method constructor <init>(Lcom/snowballfinance/message/io/c/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/d$2;->b:Lcom/snowballfinance/message/io/c/d;

    iput-object p2, p0, Lcom/snowballfinance/message/io/c/d$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 83
    .line 1086
    sget-object v0, Lcom/snowballfinance/message/io/c/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/snowballfinance/message/io/c/d$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    sget-object v0, Lcom/snowballfinance/message/io/c/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/snowballfinance/message/io/c/d$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    return-void
.end method
