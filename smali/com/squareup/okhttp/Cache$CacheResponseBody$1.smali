.class Lcom/squareup/okhttp/Cache$CacheResponseBody$1;
.super Lc/j;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/Cache$CacheResponseBody;-><init>(Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/Cache$CacheResponseBody;

.field final synthetic val$snapshot:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/Cache$CacheResponseBody;Lc/s;Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;)V
    .locals 0

    .prologue
    .line 684
    iput-object p1, p0, Lcom/squareup/okhttp/Cache$CacheResponseBody$1;->this$0:Lcom/squareup/okhttp/Cache$CacheResponseBody;

    iput-object p3, p0, Lcom/squareup/okhttp/Cache$CacheResponseBody$1;->val$snapshot:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    invoke-direct {p0, p2}, Lc/j;-><init>(Lc/s;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$CacheResponseBody$1;->val$snapshot:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->close()V

    .line 687
    invoke-super {p0}, Lc/j;->close()V

    .line 688
    return-void
.end method
