.class public Landroid/support/v4/media/MediaBrowserCompatUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, -0x1

    const-string v0, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v0, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v3, :cond_0

    if-ne v2, v3, :cond_0

    :goto_0
    return-object p0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    mul-int v3, v2, v0

    add-int v0, v3, v2

    if-lt v1, v4, :cond_1

    if-lt v2, v4, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v3, v1, :cond_2

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :cond_3
    invoke-interface {p0, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    goto :goto_0
.end method

.method public static areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v4, -0x1

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p0, :cond_3

    const-string v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_2

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    if-nez p1, :cond_5

    const-string v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_4

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    const-string v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_6

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public static hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 9

    const v2, 0x7fffffff

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v7, -0x1

    if-nez p0, :cond_3

    move v4, v7

    :goto_0
    if-nez p1, :cond_4

    move v8, v7

    :goto_1
    if-nez p0, :cond_5

    move v5, v7

    :goto_2
    if-nez p1, :cond_6

    move v6, v7

    :goto_3
    if-eq v4, v7, :cond_0

    if-ne v5, v7, :cond_7

    :cond_0
    move v4, v2

    move v5, v1

    :goto_4
    if-eq v8, v7, :cond_1

    if-ne v6, v7, :cond_8

    :cond_1
    move v3, v1

    :goto_5
    if-gt v5, v3, :cond_9

    if-gt v3, v4, :cond_9

    :cond_2
    :goto_6
    return v0

    :cond_3
    const-string v3, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move v4, v3

    goto :goto_0

    :cond_4
    const-string v3, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move v8, v3

    goto :goto_1

    :cond_5
    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p0, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move v5, v3

    goto :goto_2

    :cond_6
    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move v6, v3

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v4, -0x1

    mul-int v4, v5, v3

    add-int v3, v4, v5

    add-int/lit8 v3, v3, -0x1

    move v5, v4

    move v4, v3

    goto :goto_4

    :cond_8
    add-int/lit8 v2, v8, -0x1

    mul-int v3, v6, v2

    add-int v2, v3, v6

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_9
    if-gt v5, v2, :cond_a

    if-le v2, v4, :cond_2

    :cond_a
    move v0, v1

    goto :goto_6
.end method
