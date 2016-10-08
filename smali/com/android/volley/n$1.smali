.class final Lcom/android/volley/n$1;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/n;->b(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/android/volley/n;


# direct methods
.method constructor <init>(Lcom/android/volley/n;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/volley/n$1;->c:Lcom/android/volley/n;

    iput-object p2, p0, Lcom/android/volley/n$1;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/volley/n$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/volley/n$1;->c:Lcom/android/volley/n;

    invoke-static {v0}, Lcom/android/volley/n;->a(Lcom/android/volley/n;)Lcom/android/volley/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/n$1;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/volley/n$1;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/volley/aa;->a(Ljava/lang/String;J)V

    .line 232
    iget-object v0, p0, Lcom/android/volley/n$1;->c:Lcom/android/volley/n;

    invoke-static {v0}, Lcom/android/volley/n;->a(Lcom/android/volley/n;)Lcom/android/volley/aa;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/aa;->a(Ljava/lang/String;)V

    .line 233
    return-void
.end method
