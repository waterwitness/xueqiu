.class final Lcom/xueqiu/android/common/imagepicker/GalleryActivity$2;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/support/v4/a/ah;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/imagepicker/GalleryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/a/ah",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/imagepicker/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/imagepicker/GalleryActivity;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/xueqiu/android/common/imagepicker/GalleryActivity$2;->a:Lcom/xueqiu/android/common/imagepicker/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v4/content/n;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/content/n",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 77
    new-instance v1, Landroid/support/v4/content/h;

    iget-object v2, p0, Lcom/xueqiu/android/common/imagepicker/GalleryActivity$2;->a:Lcom/xueqiu/android/common/imagepicker/GalleryActivity;

    invoke-virtual {v2}, Lcom/xueqiu/android/common/imagepicker/GalleryActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 79
    invoke-static {}, Lcom/xueqiu/android/common/imagepicker/GalleryActivity;->j()[Ljava/lang/String;

    move-result-object v3

    const-string v4, "datetaken DESC"

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/support/v4/content/h;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 73
    check-cast p1, Landroid/database/Cursor;

    .line 1086
    const-string v0, "GalleryActivity"

    const-string v1, "onLoadFinished"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/GalleryActivity$2;->a:Lcom/xueqiu/android/common/imagepicker/GalleryActivity;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/xueqiu/android/common/imagepicker/GalleryActivity;->p:Ljava/util/Map;

    .line 1088
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 1089
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1090
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1091
    const-string v0, "_display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1092
    const-string v0, "bucket_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1093
    const-string v0, "bucket_display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1094
    const-string v0, "_data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 1095
    const-string v0, "datetaken"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1096
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1097
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1098
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/GalleryActivity$2;->a:Lcom/xueqiu/android/common/imagepicker/GalleryActivity;

    iget-object v0, v0, Lcom/xueqiu/android/common/imagepicker/GalleryActivity;->p:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1099
    if-nez v0, :cond_0

    .line 1100
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1101
    iget-object v8, p0, Lcom/xueqiu/android/common/imagepicker/GalleryActivity$2;->a:Lcom/xueqiu/android/common/imagepicker/GalleryActivity;

    iget-object v8, v8, Lcom/xueqiu/android/common/imagepicker/GalleryActivity;->p:Ljava/util/Map;

    invoke-interface {v8, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    :cond_0
    new-instance v8, Lcom/xueqiu/android/common/imagepicker/c;

    invoke-direct {v8}, Lcom/xueqiu/android/common/imagepicker/c;-><init>()V

    .line 1104
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2062
    iput-object v9, v8, Lcom/xueqiu/android/common/imagepicker/c;->a:Ljava/lang/String;

    .line 1105
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2070
    iput-object v9, v8, Lcom/xueqiu/android/common/imagepicker/c;->b:Ljava/lang/String;

    .line 3030
    iput-object v7, v8, Lcom/xueqiu/android/common/imagepicker/c;->c:Ljava/lang/String;

    .line 1107
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3046
    iput-object v7, v8, Lcom/xueqiu/android/common/imagepicker/c;->e:Ljava/lang/String;

    .line 1108
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "file://"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4038
    iput-object v7, v8, Lcom/xueqiu/android/common/imagepicker/c;->d:Ljava/lang/String;

    .line 1109
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 4078
    iput-wide v10, v8, Lcom/xueqiu/android/common/imagepicker/c;->g:J

    .line 1110
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1111
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 1113
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/GalleryActivity$2;->a:Lcom/xueqiu/android/common/imagepicker/GalleryActivity;

    iget-object v0, v0, Lcom/xueqiu/android/common/imagepicker/GalleryActivity;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1114
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/GalleryActivity$2;->a:Lcom/xueqiu/android/common/imagepicker/GalleryActivity;

    iget-object v0, v0, Lcom/xueqiu/android/common/imagepicker/GalleryActivity;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1115
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/common/imagepicker/c;

    .line 1116
    const-string v4, "%d\u5f20"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v12

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5054
    iput-object v0, v1, Lcom/xueqiu/android/common/imagepicker/c;->f:Ljava/lang/String;

    .line 1117
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1120
    :cond_2
    new-instance v0, Lcom/xueqiu/android/common/imagepicker/GalleryActivity$2$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/imagepicker/GalleryActivity$2$1;-><init>(Lcom/xueqiu/android/common/imagepicker/GalleryActivity$2;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1133
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/GalleryActivity$2;->a:Lcom/xueqiu/android/common/imagepicker/GalleryActivity;

    iget-object v0, v0, Lcom/xueqiu/android/common/imagepicker/GalleryActivity;->k:Lcom/xueqiu/android/common/imagepicker/a;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/imagepicker/a;->a(Ljava/util/List;)V

    .line 73
    :cond_3
    return-void
.end method

.method public final b()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 140
    const-string v0, "GalleryActivity"

    const-string v1, "onLoaderReset"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/GalleryActivity$2;->a:Lcom/xueqiu/android/common/imagepicker/GalleryActivity;

    iget-object v0, v0, Lcom/xueqiu/android/common/imagepicker/GalleryActivity;->k:Lcom/xueqiu/android/common/imagepicker/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/imagepicker/a;->a(Ljava/util/List;)V

    .line 142
    return-void
.end method
